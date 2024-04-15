import 'package:flutter/material.dart';
import 'package:gproject/common/component/button.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/common/component/main_text.dart';
import 'package:gproject/common/component/textformfield.dart';
import 'package:gproject/common/variable/validator.dart';
import 'package:gproject/common/view/splash_screen.dart';
import 'package:gproject/common/view/home_screen.dart';
import 'package:gproject/main.dart';
import 'package:gproject/user/view/find_IDPW/find_screen.dart';
import 'package:gproject/user/view/login/signup_screen1.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final gkey = GlobalKey<FormState>();
    TextEditingController idController = TextEditingController();
    TextEditingController pwController = TextEditingController();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
                  return SplashScreen();
                },),);
          },
          icon: Icon(Icons.arrow_back),
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
                func: () {
                  if(gkey.currentState!.validate()){
                    print(idController.text);
                    print(pwController.text);
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomeScreen();
                      },
                    ),
                  );
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
