import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/common/component/textformfield.dart';
import 'package:gproject/common/view/default_layout.dart';
import 'package:gproject/home/view/home_screen.dart';
import 'package:gproject/user/component/signup_radio_button.dart';

class SignUpScreen2 extends StatelessWidget {
  const SignUpScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController birthController = TextEditingController();
    TextEditingController allergieController = TextEditingController();
    return DefaultLayout(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextFormField(
              controller: nameController,
              hintText: '이름 입력',
            ),
            SizedBox(
              height: 12,
            ),
            CustomTextFormField(
              controller: emailController,
              hintText: '이메일 입력',
            ),
            SizedBox(
              height: 12,
            ),
            CustomTextFormField(
              controller: birthController,
              hintText: '생년 월일 입력 ex)2000.01.01',
            ),
            SizedBox(
              height: 12,
            ),
            CustomTextFormField(
              controller: allergieController,
              hintText: '알레르기 질환 입력(미기재 가능)',
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '성별',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 30),
              child: SignupRadioButtonRow(type: '성별',),
            ),
            Text(
              '피부 타입',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 30),
              child: SignupRadioButtonRow(type: '피부타입',),
            ),
            Text(
              '피부 고민',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 30),
              child: SignupRadioButtonRow(type: '피부고민',),
            ),
            Spacer(),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomeScreen();
                    },
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 13),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: PColors.mainColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    '회원가입',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
