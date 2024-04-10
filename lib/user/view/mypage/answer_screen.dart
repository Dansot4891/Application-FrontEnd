import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gproject/common/variable/color/color.dart';
import 'package:gproject/common/view/default_layout.dart';

class AnswerScreen extends StatelessWidget {
  const AnswerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 25),
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 5 * 2,
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: PColors.grey2, width: 1))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15,),
            Text('답변 완료', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
            SizedBox(height: 10,),
            AnswerBox(title: '안녕하세요', content: '안녕하세요 저는 누구누구입니다. 안녕하세요 저는 누구누구입니다. 안녕하세요 저는 누구누구입니다.'),
            AnswerBox(title: '안녕하세요', content: '안녕하세요 저는 누구누구입니다. 안녕하세요 저는 누구누구입니다. 안녕하세요 저는 누구누구입니다.'),
          ],
        ),
      ),
    );
  }

  GestureDetector AnswerBox({
    required String title,
    required String content,
    bool bottomBorder = true,
  }){
    return GestureDetector(
      child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: PColors.grey3.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(3, 3)
                  )
                ],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: PColors.mainColor,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 5,),
                  Text(
                    content,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                    maxLines: 1,
                  ),
                ],
              ),
            ),
    );
  }
}
