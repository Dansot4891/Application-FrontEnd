import 'package:flutter/cupertino.dart';
import 'package:gproject/common/component/button.dart';
import 'package:gproject/common/component/dialog.dart';
import 'package:gproject/common/component/textformfield.dart';
import 'package:gproject/common/variable/validator.dart';

class FindPWScreen extends StatelessWidget {
  const FindPWScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final gkey = GlobalKey<FormState>();
    TextEditingController emailController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    return Form(
      key: gkey,
      child: Column(
        children: [
          CustomTextFormField(
            validator: emailValidator,
            controller: emailController,
            hintText: '이메일 입력',
          ),
          SizedBox(
            height: 10,
          ),
          CustomTextFormField(
            validator: nameValidator,
            controller: nameController,
            hintText: '이름 입력',
          ),
          SizedBox(
            height: 30,
          ),
          CustomButton(
            text: '아이디 찾기',
            func: () {
              if(gkey.currentState!.validate()){
                CustomDialog(
              context: context,
              title: "회원님의 비밀번호는\n'chlgustn123'입니다.",
              buttonText: '확인',
              buttonCount: 1,
              func: () {
                Navigator.pop(context);
              },
            );
              }
            },
          )
        ],
      ),
    );
  }
}
