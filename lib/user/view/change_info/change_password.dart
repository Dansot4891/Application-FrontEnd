import 'package:flutter/material.dart';
import 'package:gproject/common/component/button.dart';
import 'package:gproject/common/component/textformfield.dart';
import 'package:gproject/main.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nowPwController = TextEditingController();
    TextEditingController newPwController1 = TextEditingController();
    TextEditingController newPwController2 = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30,),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '현재 비밀번호',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: ratio.height * 5,
            ),
            CustomTextFormField(
              controller: nowPwController,
              hintText: '현재 비밀번호 입력',
            ),
            SizedBox(height: ratio.height * 50,),
            Text(
              '새 비밀번호',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: ratio.height * 5,
            ),
            CustomTextFormField(
              controller: nowPwController,
              hintText: '현재 비밀번호 입력',
            ),
            SizedBox(
              height: ratio.height * 5,
            ),
            CustomTextFormField(
              controller: nowPwController,
              hintText: '현재 비밀번호 입력',
            ),
            SizedBox(
              height: ratio.height * 50,
            ),
            CustomButton(text: '변경하기', func: (){})
          ],
        ),
      ),
    );
  }
}
