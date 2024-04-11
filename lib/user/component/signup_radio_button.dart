import 'package:flutter/material.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/common/variable/textstyle.dart';

class CustomRadioButton extends StatelessWidget {
  final bool last;
  final String title;
  const CustomRadioButton({required this.title, this.last = false, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: last ? 0 : 15, top: 10),
      child: Row(
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: PColors.mainColor,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: PTextStyle.signup_sub,
          ),
        ],
      ),
    );
  }
}

class CustomRadioButtonColumn extends StatelessWidget {
  final String title;
  const CustomRadioButtonColumn({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: PTextStyle.signup_sub,
          ),
          title == '성별' ? Row(
            children: [
              CustomRadioButton(title: '남자'),
              CustomRadioButton(title: '여자', last: true,),
            ],
          ) : title == '피부타입' ? Row(
                children: [
                  CustomRadioButton(title: '건성'),
                  CustomRadioButton(title: '중성'),
                  CustomRadioButton(title: '지성'),
                  CustomRadioButton(title: '민감성', last: true,),
                ],
              ) : Row(
                children: [
                  CustomRadioButton(title: '해당없음'),
                  CustomRadioButton(title: '아토피'),
                  CustomRadioButton(title: '여드름'),
                  CustomRadioButton(title: '민감성', last: true,),
                ],
              ),
        ],
      ),
    );
  }
}
