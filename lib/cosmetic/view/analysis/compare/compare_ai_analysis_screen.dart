import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/component/button.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/cosmetic/provider/anlysis/compare_analysis_provider.dart';
import 'package:gproject/cosmetic/view/analysis/ai_analysis_screen.dart';
import 'package:gproject/cosmetic/view/analysis/compare/total_ai_analysis_screen.dart';
import 'package:gproject/main.dart';
import 'package:gproject/user/provider/login_provider.dart';
import 'package:gproject/user/view/login/signup_screen1.dart';

class CompareAIAnalysisScreen extends ConsumerWidget {
  const CompareAIAnalysisScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginState = ref.watch(loginStateProvider);
    final data = ref.watch(compareAnalysisProvider);
    return loginState
        ? Swiper(
              itemCount: 3,
              scale: 0,
              viewportFraction: 1,
              scrollDirection: Axis.horizontal,
              pagination: SwiperPagination(
                alignment: Alignment.topCenter,
                builder: DotSwiperPaginationBuilder(
                  activeColor: PColors.mainColor,
                  color: PColors.grey3.withOpacity(0.5),
                  size: 12,
                  activeSize: 14,
                  space: 8,
                ),
              ),
              loop: false,
              itemBuilder: (context, index) {
                if(index == 0){
                  return TotalAIAnalysisScreen();
                }
                else{
                  return AIAnalysisScreen(compareData: data.analysisList[index-1], text: Text('${index}번 이미지', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),);
                }
              },
            )
        : unLoginedUser(context);
  }

  Center unLoginedUser(BuildContext context){
    return Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.light_mode_outlined,
                    size: 100,
                    color: PColors.mainColor,
                  ),
                  SizedBox(
                    height: ratio.height * 30,
                  ),
                  Text(
                    "회원 전용 기능입니다.\n회원가입을 하시면\n더 많은 기능을 제공받으실 수 있습니다.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: ratio.height * 30,
                  ),
                  CustomButton(
                    text: '회원가입 하러가기',
                    func: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SignUpScreen1();
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          );
  }

  Container AIAnalysis({required String comment}) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 20,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
              color: PColors.grey3.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(1, 3)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'AI 분석',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            comment,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Container GridViewBox({
    required String title,
    bool selected = false,
  }) {
    return Container(
      margin: const EdgeInsets.all(12),
      width: 140,
      height: 60,
      child: Container(
        decoration: BoxDecoration(
          color: selected ? PColors.subColor2 : Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
