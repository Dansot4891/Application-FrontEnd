import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/component/button.dart';
import 'package:gproject/common/component/dialog.dart';
import 'package:gproject/common/dio/dio.dart';
import 'package:gproject/common/secure_storage/secure_storage.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/common/component/main_text.dart';
import 'package:gproject/common/component/textformfield.dart';
import 'package:gproject/common/variable/validator.dart';
import 'package:gproject/common/view/splash_screen.dart';
import 'package:gproject/common/view/home_screen.dart';
import 'package:gproject/main.dart';
import 'package:gproject/user/model/user_model.dart';
import 'package:gproject/user/provider/login_provider.dart';
import 'package:gproject/user/view/find_IDPW/find_screen.dart';
import 'package:gproject/user/view/login/signup_screen1.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gkey = GlobalKey<FormState>();
    TextEditingController idController = TextEditingController();
    TextEditingController pwController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return SplashScreen();
                },
              ),
            );
          },
          icon: Icon(
            Icons.arrow_back,
            size: 35,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Form(
          key: gkey,
          child: Column(
            children: [
              SizedBox(
                height: ratio.height * 150,
              ),
              MainText(),
              SizedBox(
                height: ratio.height * 50,
              ),
              CustomTextFormField(
                validator: idValidator,
                controller: idController,
                hintText: '아이디 입력',
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                obsecure: true,
                validator: pwValidator,
                controller: pwController,
                hintText: '비밀번호 입력',
              ),
              SizedBox(
                height: 30,
              ),
              CustomButton(
                text: '로그인',
                func: () async {
                  if (gkey.currentState!.validate()) {
                    print(BASE_URL);
                    final resp = await dio
                        .post('${BASE_URL}/api/user/login', data: {
                      'login_id': idController.text,
                      'password': pwController.text,
                    });
                    try{
                      if (resp.statusCode == 200) {
                      final user = UserModel.fromJson(resp.data);
                      final storage = ref.watch(secureStorageProvider);
                      await storage.write(
                          key: 'user', value: jsonEncode(user.toJson()));
                      ref.read(userDataProvider.notifier).updateUserModel(ref);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return HomeScreen();
                          },
                        ),
                      );
                    }else{
                      print('실패했어요');
                    }
                    }catch(e){
                      print(e);
                      print('실패');
                    }
                  }
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return FindScreen();
                          },
                        ),
                      );
                    },
                    child: Text(
                      '아이디 찾기 | 비밀번호 찾기',
                      style: TextStyle(
                        color: Color(0xFF04060E),
                      ),
                    ),
                  ),
                  Text(
                    '|',
                    style: TextStyle(
                      color: PColors.grey1.withOpacity(0.3),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SignUpScreen1();
                          },
                        ),
                      );
                    },
                    child: Text(
                      '회원가입',
                      style: TextStyle(
                        color: Color(0xFF04060E),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
