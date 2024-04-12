import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/main.dart';

class IngredientEffectScreen extends StatelessWidget {
  const IngredientEffectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '효과별 성분',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: '수분 흡수 증진',
                        style: TextStyle(
                          color: PColors.subColor3,
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: ', 각질제거',
                        style: TextStyle(
                          color: PColors.subColor3,
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: ', 지속 시간 증가',
                        style: TextStyle(
                          color: PColors.subColor3,
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(text: ' 등의 효과가 있습니다.'),
                    ],),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 15,),
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border(
            bottom: BorderSide(
              color: Colors.black,
            ),
          )),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 10,
                ),
                CustomStickGraph(num: 31, title: '수분 흡수 증진',),
                CustomStickGraph(num: 19, title: '각질 제거',),
                CustomStickGraph(num: 12, title: '지속 시간 증가',),
                CustomStickGraph(num: 8, title: '미백',),
                CustomStickGraph(num: 4, title: '블라블라',),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Padding CustomStickGraph({
    required int num,
    required String title,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25,),
      child: Column(
        children: [
          Text(
            '${num}개',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            height: ratio.height * 5 * num,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: PColors.mainColor,
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
