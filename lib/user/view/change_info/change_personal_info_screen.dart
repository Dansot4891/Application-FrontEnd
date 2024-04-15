import 'package:flutter/material.dart';
import 'package:gproject/common/component/button.dart';
import 'package:gproject/common/component/dialog.dart';
import 'package:gproject/common/component/textformfield.dart';
import 'package:gproject/main.dart';
import 'package:gproject/user/component/signup_radio_button.dart';
import 'package:gproject/user/view/mypage/mypage_screen.dart';

class ChangePersonalInfoScreen extends StatelessWidget {
  const ChangePersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController =
        TextEditingController(text: '최현수123');
    TextEditingController emailController =
        TextEditingController(text: 'chlgustn123@naver.com');
    TextEditingController allergieController =
        TextEditingController(text: 'OO 알레르기, OO 알레르기');
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: '이름',
                  ),
                  SizedBox(
                    height: ratio.height * 5,
                  ),
                  Text(
                    '최현수',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: ratio.height * 20,
                  ),
                  CustomText(
                    text: '생년 월일',
                  ),
                  SizedBox(
                    height: ratio.height * 5,
                  ),
                  Text(
                    '2000.01.01',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: ratio.height * 20,
                  ),
                  CustomText(
                    text: '닉네임',
                  ),
                  SizedBox(
                    height: ratio.height * 5,
                  ),
                  CustomTextFormField(
                    controller: nameController,
                    hintText: '닉네임 입력',
                  ),
                  SizedBox(
                    height: ratio.height * 20,
                  ),
                  CustomText(
                    text: '이메일',
                  ),
                  SizedBox(
                    height: ratio.height * 5,
                  ),
                  CustomTextFormField(
                    controller: emailController,
                    hintText: '이메일 입력',
                  ),
                  SizedBox(
                    height: ratio.height * 20,
                  ),
                  CustomText(
                    text: '알레르기',
                  ),
                  SizedBox(
                    height: ratio.height * 5,
                  ),
                  CustomTextFormField(
                    controller: allergieController,
                    hintText: '알레르기 입력',
                  ),
                  SizedBox(
                    height: ratio.height * 20,
                  ),
                  CustomText(
                    text: '성별',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 30),
                    child: SignupRadioButtonRow(
                      type: '성별',
                    ),
                  ),
                  CustomText(
                    text: '피부 타입',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 30),
                    child: SignupRadioButtonRow(
                      type: '피부타입',
                    ),
                  ),
                  CustomText(
                    text: '피부 고민',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 30),
                    child: SignupRadioButtonRow(
                      type: '피부고민',
                    ),
                  ),
                  Spacer(),
                  CustomButton(
                    text: '회원가입',
                    func: () {
                      CustomDialog(
                          context: context,
                          title: '회원가입이 완료됐습니다!',
                          buttonText: '확인',
                          buttonCount: 1,
                          func: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return MyPageScreen();
                                },
                              ),
                            );
                          });
                    },
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Text CustomText({
    required String text,
  }) {
    return Text(
      text,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
    );
  }
}
