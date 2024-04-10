import 'package:flutter/material.dart';
import 'package:gproject/common/variable/color/color.dart';
import 'package:gproject/common/variable/textstyle/textstyle.dart';
import 'package:gproject/common/component/main_text.dart';
import 'package:gproject/common/component/textformfield.dart';
import 'package:gproject/home/view/home_screen.dart';

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
            MainText(),
            SizedBox(height: 40,),
            CustomTextFormField(controller: nameController, hintText: '이름 입력',),
            SizedBox(height: 12,),
            CustomTextFormField(controller: emailController, hintText: '이메일 입력',),
            SizedBox(height: 12,),
            CustomTextFormField(controller: birthController, hintText: '생년 월일 입력 ex)2000.01.01',),
            SizedBox(height: 12,),
            CustomTextFormField(controller: allergieController, hintText: '알레르기 질환 입력(미기재 가능)',),
            Checkbox(value: false, onChanged: (bool? val) {

            },
            activeColor: PColors.mainColor,
            ),
            // CustomRadioButtonColumn(title: '성별'),
            // CustomRadioButtonColumn(title: '피부타입'),
            // CustomRadioButtonColumn(title: '피부고민'),
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
