import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gproject/common/component/dialog.dart';
import 'package:gproject/common/variable/color/color.dart';
import 'package:gproject/common/view/default_layout.dart';
import 'package:gproject/cosmetic/view/ingredient/ingredient_screen.dart';
import 'package:gproject/user/view/mypage/answer_screen.dart';
import 'package:gproject/user/view/mypage/question_screen.dart';

class MyPageScreen extends StatelessWidget {
  const MyPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> buttons = [
      MyPageButton(icon: Icon(Icons.settings_outlined,size: 40,),text: '개인정보 변경',func: () {},),
      MyPageButton(icon: Icon(Icons.help_outline,size: 40,),text: '문의하기',func: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return QuestionScreen();
        },),);
      },),
      MyPageButton(icon: Icon(Icons.check_circle_outline,size: 40,),text: '문의내역',func: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return AnswerScreen();
        },),);
      },),
      MyPageButton(icon: Icon(Icons.inventory_2_outlined,size: 40,),text: '전체 성분 확인하기',func: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return IngredientScreen();
        },),);
      },),
      MyPageButton(icon: Icon(Icons.inventory_outlined,size: 40,),text: '나의 성분 확인하기',func: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return IngredientScreen();
        },),);
      },),
      MyPageButton(icon: Icon(Icons.logout_outlined,size: 40,),text: '로그아웃',func: () {
        CustomDialog(context: context, title: '로그아웃 하시겠습니까?', buttonText: null, buttonCount: 2, func: (){});
      },),
      MyPageButton(icon: Icon(Icons.person_remove_outlined,size: 40,),text: '회원탈퇴',func: () {},),
    ];
    return DefaultLayout(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
      child: Column(
        children: [
          Info(),
          SizedBox(
            height: 30,
          ),
          ...List.generate(buttons.length, (index) => Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: buttons[index],
          ))
        ],
      ),
    ));
  }

  Column Info(){
    return Column(
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
      ],
    );
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
            width: 15,
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
