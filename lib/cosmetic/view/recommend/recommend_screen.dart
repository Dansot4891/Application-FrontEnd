import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/component/stick_graph.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/common/view/default_layout.dart';
import 'package:gproject/common/view/home_screen.dart';
import 'package:gproject/cosmetic/component/ingredient/ingredient_mini_bar.dart';
import 'package:gproject/cosmetic/model/cosmetics/cosmetic_model.dart';
import 'package:gproject/cosmetic/provider/cosmetics/cosmetic_info_provider.dart';
import 'package:gproject/cosmetic/provider/cosmetics/cosmetics_provider.dart';
import 'package:gproject/cosmetic/provider/cosmetics/recommend_cosmetic_provider.dart';
import 'package:gproject/cosmetic/view/costetics/cosmetics_info_screen.dart';
import 'package:gproject/main.dart';

class RecommendScreen extends ConsumerWidget {
  const RecommendScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(RecommendCosmeticProvider);
    String skinType = data.skintype == 'DRY'
        ? '건성'
        : data.skintype == 'SENSITIVE'
            ? '민감성'
            : '지성';
    return DefaultLayout(
      func: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return HomeScreen();
            },
          ),
        );
      },
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
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: Image.network('https:${data.image}', fit: BoxFit.cover,),
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
                  Text(
                          data.name,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                          overflow: TextOverflow.clip,
                      ),
                       SizedBox(
                    height: ratio.height * 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                            onPressed: () async {
                              await ref.read(CosmeticInfoProvider.notifier).getDetail(data.id);
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return CosmeticsInfoScreen();
                                  },
                                ),
                              );
                            },
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
                  StickGraph(
                      percent: data.compatibilityScore.toDouble(), padding: 50),
                  RichText(
                    text: TextSpan(
                      text: '본 화장품은 ',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: skinType,
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
                          title: skinType,
                          context: context,
                          list: data.skinTypeDescriptions),
                      recommendContainer(
                        context: context,
                        title: "주요 성분",
                        list: data.keyIngredient,
                      )
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
          onTap: () {},
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
    required List<String> list,
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
      child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return title == "주요 성분"
                ? SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: IngredientMiniBar(
                    grade: 1,
                    name: list[index],
                    fontSize: 14,
                    func: () {},
                    preference: false,
                    isPreference: false,
                  ),)
                : effectText(effect: list[index]);
          }),
    );
  }
}
