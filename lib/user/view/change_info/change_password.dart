import 'package:flutter/material.dart';
import 'package:gproject/common/component/button.dart';
import 'package:gproject/common/component/dialog.dart';
import 'package:gproject/common/component/textformfield.dart';
import 'package:gproject/common/variable/validator.dart';
import 'package:gproject/main.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final gkey = GlobalKey<FormState>();
    TextEditingController nowPwController = TextEditingController();
    TextEditingController newPwController1 = TextEditingController();
    TextEditingController newPwController2 = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 30,
      ),
      child: Form(
        key: gkey,
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
              obsecure: true,
              validator: pwValidator,
              controller: nowPwController,
              hintText: '현재 비밀번호 입력',
            ),
            SizedBox(
              height: ratio.height * 50,
            ),
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
              obsecure: true,
              validator: pwValidator,
              controller: newPwController1,
              hintText: '새 비밀번호 입력',
            ),
            SizedBox(
              height: ratio.height * 15,
            ),
            CustomTextFormField(
              obsecure: true,
              validator: pwValidator,
              controller: newPwController2,
              hintText: '새 비밀번호 재입력',
            ),
            SizedBox(
              height: ratio.height * 50,
            ),
            CustomButton(
              text: '변경하기',
              func: () {
                if (gkey.currentState!.validate()) {
                  if (newPwController1.text != newPwController2.text) {
                    CustomDialog(
                      context: context,
                      title: "새 비밀번호를 확인해주세요.",
                      buttonText: '확인',
                      buttonCount: 1,
                      func: () {
                        Navigator.pop(context);
                      },
                    );
                  }
                  if (newPwController1.text == newPwController2.text) {
                    CustomDialog(
                      context: context,
                      title: "변경이 완료되었습니다.",
                      buttonText: '확인',
                      buttonCount: 1,
                      func: () {
                        Navigator.pop(context);
                      },
                    );
                  }
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
