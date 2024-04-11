import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/common/view/default_layout.dart';

class AnswerScreen extends StatelessWidget {
  const AnswerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      child: Column(
        children: [
          AnswerBigBox(context: context, title: '답변 완료'),
          AnswerBigBox(context: context, title: '답변 미완료', underBorder: false),
        ],
      )
    );
  }

  Container AnswerBigBox({
    required BuildContext context,
    required String title,
    bool underBorder = true,
  }){
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 25),
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 5 * 2,
        decoration: BoxDecoration(
            border: underBorder ? Border(bottom: BorderSide(color: PColors.grey2, width: 1),) : null),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15,),
            Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
            SizedBox(height: 10,),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  AnswerBox(title: '안녕하세요', content: '안녕하세요 저는 누구누구입니다. 안녕하세요 저는 누구누구입니다. 안녕하세요 저는 누구누구입니다.', answer: underBorder),
              AnswerBox(title: '안녕하세요', content: '안녕하세요 저는 누구누구입니다. 안녕하세요 저는 누구누구입니다. 안녕하세요 저는 누구누구입니다.', answer: underBorder),
              AnswerBox(title: '안녕하세요', content: '안녕하세요 저는 누구누구입니다. 안녕하세요 저는 누구누구입니다. 안녕하세요 저는 누구누구입니다.', answer: underBorder),
              AnswerBox(title: '안녕하세요', content: '안녕하세요 저는 누구누구입니다. 안녕하세요 저는 누구누구입니다. 안녕하세요 저는 누구누구입니다.', answer: underBorder),
              AnswerBox(title: '안녕하세요', content: '안녕하세요 저는 누구누구입니다. 안녕하세요 저는 누구누구입니다. 안녕하세요 저는 누구누구입니다.', answer: underBorder),
              AnswerBox(title: '안녕하세요', content: '안녕하세요 저는 누구누구입니다. 안녕하세요 저는 누구누구입니다. 안녕하세요 저는 누구누구입니다.', answer: underBorder),
                ],
              ),
            )
          ],
        ),
      );
  }

  GestureDetector AnswerBox({
    required String title,
    required String content,
    bool answer = true,
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
                  color: answer ? PColors.mainColor : PColors.grey3
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
