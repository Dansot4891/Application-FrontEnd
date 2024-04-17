import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/component/button.dart';
import 'package:gproject/common/component/dialog.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/common/component/main_text.dart';
import 'package:gproject/common/component/textformfield.dart';
import 'package:gproject/common/variable/validator.dart';
import 'package:gproject/main.dart';
import 'package:gproject/user/provider/id_check_provider.dart';
import 'package:gproject/user/view/login/signup_screen2.dart';

class SignUpScreen1 extends ConsumerWidget {
  SignUpScreen1({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gkey = GlobalKey<FormState>();
    TextEditingController idController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController pwController = TextEditingController();
    TextEditingController pwCheckController = TextEditingController();
    final checkId = ref.watch(idCheckProvider);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: Form(
            key: gkey,
            child: Column(
              children: [
                SizedBox(
                  height: ratio.height * 80,
                ),
                MainText(),
                SizedBox(
                  height: ratio.height * 50,
                ),
                checkId
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '사용하실 수 있는 아이디입니다.',
                            style: TextStyle(
                                fontSize: 16,
                                color: PColors.subColor3.withOpacity(0.75),
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      )
                    : SizedBox(),
                checkId
                    ? CustomTextFormField(
                        enabled: false,
                        initialValue: ref.watch(idProvider),
                        controller: idController,
                        hintText: '아이디 입력',
                      )
                    : CustomTextFormField(
                        validator: idValidator,
                        controller: idController,
                        hintText: '아이디 입력',
                      ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () async {
                        if(idController.text == ""){
                          CustomDialog(context: context, title: '아이디를 입력해주세요.', buttonText: '확인', buttonCount: 1, func: (){Navigator.pop(context);});
                          return;
                        }
                        ref.read(idProvider.notifier).setId(idController.text);
                        ref.read(idCheckProvider.notifier).checkId(idController.text, context);
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: PColors.mainColor,
                        ),
                        child: Text(
                          '아이디 중복확인',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                CustomTextFormField(
                  validator: nickNameValidator,
                  controller: nameController,
                  hintText: '닉네임 입력',
                ),
                SizedBox(
                  height: 12,
                ),
                CustomTextFormField(
                  obsecure: true,
                  validator: pwValidator,
                  controller: pwController,
                  hintText: '비밀번호 입력',
                ),
                SizedBox(
                  height: 12,
                ),
                CustomTextFormField(
                  obsecure: true,
                  validator: pwValidator,
                  controller: pwCheckController,
                  hintText: '비밀번호 재입력',
                ),
                SizedBox(
                  height: ratio.height * 50,
                ),
                CustomButton(
                  text: '다음',
                  func: () {
                    if (gkey.currentState!.validate()) {
                      if (!checkId) {
                        CustomDialog(
                            context: context,
                            title: '아이디 중복검사를 해주세요.',
                            buttonText: '확인',
                            buttonCount: 1,
                            func: () {
                              Navigator.pop(context);
                            });
                      }
                      if (checkId) {
                        if (pwController.text != pwCheckController.text) {
                          CustomDialog(
                            context: context,
                            title: '비밀번호를 확인해주세요.',
                            buttonText: '확인',
                            buttonCount: 1,
                            func: () {
                              Navigator.pop(context);
                            },
                          );
                        } else {
                          ref.read(idCheckProvider.notifier).resetValue();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return SignUpScreen2(
                                  id: ref.watch(idProvider),
                                  nickname: nameController.text,
                                  password: pwController.text,
                                );
                              },
                            ),
                          );
                        }
                      }
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
