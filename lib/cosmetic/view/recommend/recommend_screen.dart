import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/common/variable/image_path.dart';
import 'package:gproject/common/view/default_layout.dart';
import 'package:gproject/cosmetic/component/ingredient/ingredient_mini_bar.dart';
import 'package:gproject/main.dart';

class RecommendScreen extends StatelessWidget {
  const RecommendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      isBoard: true,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Text(
                "AI 사용자 맞춤 추천",
                style: TextStyle(
                  fontFamily: 'Pretendard',
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Image.asset(
              ImgPath.sample,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15,
                horizontal: 25,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //상단 화장품 이름과 구매처 버튼
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '레이어 물톡스 엠프',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: PColors.mainColor,
                        ),
                        child: Text(
                          '구매처 확인',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ratio.height * 30,
                  ),
                  //그래프 및 텍스트
                  Text(
                    "궁합력",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  ),
                  CustomGraph(context: context, percent: 82),
                  RichText(
                    text: TextSpan(
                      text: '본 화장품은 ',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                      children: const <TextSpan>[
                        TextSpan(
                          text: '민감성 피부',
                          style: TextStyle(
                            fontSize: 14,
                            color: PColors.safe,
                          ),
                        ),
                        TextSpan(
                          text: '에 효능이 좋습니다.',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: ratio.height * 30,
                  ),
                  //피부 관련 효과 및 성분
                  Row(
                    children: [
                      recommendContainer(
                          title: "민감성 피부",
                          context: context,
                          list: [
                            effectText(effect: '수분 보충'),
                            effectText(effect: '예민현상 차단'),
                            effectText(effect: '습윤'),
                            effectText(effect: '윤기 효과'),
                            effectText(effect: '수분 보충'),
                            effectText(effect: '예민현상 차단'),
                            effectText(effect: '습윤'),
                            effectText(effect: '윤기 효과'),
                          ]),
                      recommendContainer(
                          context: context,
                          title: "주요 성분",
                          list: [
                            IngredientMiniBar(grade: 1, name: '글리세린', fontSize: 14, func: (){}, preference: false,),
                            IngredientMiniBar(grade: 1, name: '글리세린', fontSize: 14, func: (){}, preference: false,),
                            IngredientMiniBar(grade: 1, name: '글리세린', fontSize: 14, func: (){}, preference: false,),
                            IngredientMiniBar(grade: 1, name: '글리세린', fontSize: 14, func: (){}, preference: false,),
                            IngredientMiniBar(grade: 1, name: '글리세린', fontSize: 14, func: (){}, preference: false,),
                            IngredientMiniBar(grade: 1, name: '글리세린', fontSize: 14, func: (){}, preference: false,),
                            IngredientMiniBar(grade: 1, name: '글리세린', fontSize: 14, func: (){}, preference: false,),
                            IngredientMiniBar(grade: 1, name: '글리세린', fontSize: 14, func: (){}, preference: false,),
                            IngredientMiniBar(grade: 1, name: '글리세린', fontSize: 14, func: (){}, preference: false,),
                            IngredientMiniBar(grade: 1, name: '글리세린', fontSize: 14, func: (){}, preference: false,),
                          ])
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Stack CustomGraph({
    required BuildContext context,
    required int percent,
  }) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          width: MediaQuery.of(context).size.width,
          height: ratio.height * 35,
          decoration: BoxDecoration(
            color: PColors.grey2,
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          width: (MediaQuery.of(context).size.width - 50) / 100 * percent,
          height: ratio.height * 35,
          decoration: BoxDecoration(
            color: PColors.mainColor,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Center(
            child: Text(
              '${percent}%',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Row effectText({
    required String effect,
  }) {
    return Row(
      children: [
        Text(
          effect,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
        Icon(
          Icons.keyboard_arrow_up,
          size: 35,
          color: PColors.safe,
        )
      ],
    );
  }

  Row ingredientText({
    required String ingredient,
    required int grade,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 21,
              height: 21,
              decoration: BoxDecoration(
                color: PColors.safe,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  grade.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              ingredient,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        GestureDetector(
          onTap: (){
            
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              Icon(Icons.bookmark,
                  size: 42, color: Color(0xFF636363).withOpacity(0.8)),
              Icon(
                Icons.bookmark,
                size: 35,
                color: PColors.bookMark,
              )
            ],
          ),
        )
      ],
    );
  }

  Container recommendContainer({
    required BuildContext context,
    required String title,
    required List<Widget> list,
  }) {
    return Container(
      padding: title == "주요 성분" ? const EdgeInsets.only(left: 15) : null,
      width: (MediaQuery.of(context).size.width - 50) / 2,
      height: ratio.height * 300,
      decoration: BoxDecoration(
        border: title == "주요 성분"
            ? Border(
                left: BorderSide(
                color: PColors.grey2,
              ))
            : Border(
                right: BorderSide(
                color: PColors.grey2,
              )),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: ratio.height * 10,
            ),
            ...List.generate(list.length, (index) => list[index])
          ],
        ),
      ),
    );
  }
}
