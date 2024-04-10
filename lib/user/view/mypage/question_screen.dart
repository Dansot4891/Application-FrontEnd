import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gproject/common/component/button.dart';
import 'package:gproject/common/component/textformfield.dart';
import 'package:gproject/common/view/default_layout.dart';
import 'package:gproject/main.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController title = TextEditingController();
    TextEditingController content = TextEditingController();
    return DefaultLayout(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Column(
          children: [
            CustomTextFormField(controller: title, hintText: '제목을 입력해주세요.'),
            SizedBox(height: ratio.height * 30,),
            Expanded(child: CustomTextFormField(controller: content, hintText: '내용을 입력해주세요.', expand: true,),),
            SizedBox(height: ratio.height * 100,),
            CustomButton(text: '문의하기', func: (){}),
            SizedBox(height: ratio.height * 40,),
          ],
        ),
      ),
    );
  }
}