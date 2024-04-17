import 'package:flutter/cupertino.dart';
import 'package:gproject/common/component/button.dart';
import 'package:gproject/common/component/dialog.dart';
import 'package:gproject/common/component/textformfield.dart';
import 'package:gproject/common/dio/dio.dart';
import 'package:gproject/common/variable/validator.dart';

class FindPwScreen extends StatelessWidget {
  const FindPwScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final gkey = GlobalKey<FormState>();
    TextEditingController emailController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController idController = TextEditingController();
    return Form(
      key: gkey,
      child: Column(
        children: [
          CustomTextFormField(
            validator: idValidator,
            controller: idController,
            hintText: '아이디 입력',
          ),
          SizedBox(
            height: 10,
          ),
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
            text: '비밀번호 찾기',
            func: () async {
              if (gkey.currentState!.validate()) {
                try {
                  final resp = await dio.post(
                      'http://ceprj.gachon.ac.kr:60006/api/user/find_password',
                      data: {
                        "login_id": idController.text,
                        "email": emailController.text,
                        "name": nameController.text,
                      });
                  if (resp.statusCode == 200) {
                    CustomDialog(
                      context: context,
                      title: "회원님의 비밀번호는\n'${resp.data}'입니다.",
                      buttonText: '확인',
                      buttonCount: 1,
                      func: () {
                        Navigator.pop(context);
                      },
                    );
                  }
                } catch (e) {
                  CustomDialog(
                      context: context,
                      title: "정보를 다시 확인해주세요.",
                      buttonText: '확인',
                      buttonCount: 1,
                      func: () {
                        Navigator.pop(context);
                      },
                    );
                }
              }
            },
          )
        ],
      ),
    );
  }
}