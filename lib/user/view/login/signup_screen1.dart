import 'package:flutter/material.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/common/component/main_text.dart';
import 'package:gproject/common/component/textformfield.dart';
import 'package:gproject/user/view/login/signup_screen2.dart';

class SignUpScreen1 extends StatelessWidget {
  const SignUpScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController idController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController pwController = TextEditingController();
    TextEditingController pwCheckController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25,),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height / 8 * 1,),
            MainText(),
            SizedBox(height: MediaQuery.of(context).size.height / 15 * 1,),
            CustomTextFormField(controller: idController, hintText: '아이디 입력',),
            SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5,),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: PColors.mainColor,
                    ),
                    child: Text('아이디 중복확인', style: TextStyle(color: Colors.white, fontSize: 16,),),
                  ),
                ),
              ],
            ),
            SizedBox(height: 12,),
            CustomTextFormField(controller: nameController, hintText: '닉네임 입력',),
            SizedBox(height: 12,),
            CustomTextFormField(controller: pwController, hintText: '비밀번호 입력',),
            SizedBox(height: 12,),
            CustomTextFormField(controller: pwCheckController, hintText: '비밀번호 재입력',),
            SizedBox(height: 40,),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen2();
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
                    '다음',
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