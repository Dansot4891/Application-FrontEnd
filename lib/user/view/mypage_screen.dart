import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gproject/common/variable/color/color.dart';
import 'package:gproject/common/view/default_layout.dart';

class MyPageScreen extends StatelessWidget {
  const MyPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> buttons = [
      MyPageButton(icon: Icon(Icons.settings_outlined,size: 40,),text: '개인정보 변경',func: () {},),
      MyPageButton(icon: Icon(Icons.help_outline,size: 40,),text: '문의하기',func: () {},),
      MyPageButton(icon: Icon(Icons.check_circle_outline,size: 40,),text: '문의내역',func: () {},),
      MyPageButton(icon: Icon(Icons.settings,size: 40,),text: '개인정보 변경',func: () {},),
      MyPageButton(icon: Icon(Icons.settings,size: 40,),text: '개인정보 변경',func: () {},),
    ];
    return DefaultLayout(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '최현수',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '2000.01.01',
                style: TextStyle(
                  color: PColors.grey3,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'chlgustn@naver.com',
            style: TextStyle(
              color: PColors.grey3,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ...List.generate(buttons.length, (index) => buttons[index])
        ],
      ),
    ));
  }

  InkWell MyPageButton({
    required Icon icon,
    required String text,
    required VoidCallback func,
  }) {
    return InkWell(
      onTap: func,
      child: Row(
        children: [
          icon,
          SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
