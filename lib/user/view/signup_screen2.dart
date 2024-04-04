import 'package:flutter/material.dart';
import 'package:gproject/common/logo/main_logo.dart';
import 'package:gproject/component/textformfield.dart';

class SignUpScreen2 extends StatelessWidget {
  const SignUpScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController birthController = TextEditingController();
    TextEditingController allergieController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: Column(
          children: [
            SizedBox(height: 50,),
            MainLogo(),
            SizedBox(height: 40,),
            CustomTextFormField(controller: nameController, hintText: '이름 입력',),
            SizedBox(height: 12,),
            CustomTextFormField(controller: emailController, hintText: '이메일 입력',),
            SizedBox(height: 12,),
            CustomTextFormField(controller: birthController, hintText: '생년 월일 입력 ex)2000.01.01',),
            
            SizedBox(height: 20,),
            CustomTextFormField(controller: allergieController, hintText: '알레르기 질환 입력(미기재 가능)',),
          ],
        ),
      ),
    );
  }
}
