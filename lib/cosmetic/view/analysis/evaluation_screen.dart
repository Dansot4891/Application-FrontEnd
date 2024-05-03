import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/component/button.dart';
import 'package:gproject/common/component/dialog.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/common/view/default_layout.dart';
import 'package:gproject/cosmetic/provider/anlysis/analysis_provider.dart';
import 'package:gproject/cosmetic/provider/evaluation/evaluation_provider.dart';
import 'package:gproject/common/view/home_screen.dart';
import 'package:gproject/cosmetic/provider/ingredient/ingredient_provider.dart';
import 'package:gproject/cosmetic/view/recommend/recommend_screen.dart';
import 'package:gproject/main.dart';
import 'package:gproject/user/provider/login_provider.dart';

class EvaluationScreen extends ConsumerWidget {
  final bool isCompare;
  const EvaluationScreen({this.isCompare = false, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final state = ref.watch(starIndexProvider1);
    // final state2 = ref.watch(starIndexProvider2);
    final state = ref.watch(starIndexProvider);
    // int state = ref.watch(starIndexProvider)[0];
    // int state2 = ref.watch(starIndexProvider)[1];
    final loginState = ref.watch(loginStateProvider);
    final user = ref.watch(userDataProvider);
    final analysisId = ref.watch(analysisNumProvider)[0];
    return DefaultLayout(
      func: () {
        Navigator.pop(context);
      },
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '분석을 평가하고 추천 받아보세요!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: ratio.height * 20,
              ),
              Text(
                '해당 분석에 대해서 평가를 해주시면\n평가에 맞는 화장품을 추천을 해드립니다.',
                style: TextStyle(
                  color: PColors.grey3,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
              Spacer(),
              Text(
                '분석 평가',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: ratio.height * 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    5,
                    (index) => IconButton(
                      onPressed: () {
                        ref.read(starIndexProvider.notifier).setIndex(0, index + 1);
                      },
                      icon: Icon(
                        index < state[0]
                            ? Icons.star
                            : Icons.star_border_outlined,
                        size: 40,
                        color: PColors.mainColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: ratio.height * 50,
              ),
              Text(
                '화장품 평가',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: ratio.height * 30,
              ),
              isCompare ? Text('1번 화장품', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),) : SizedBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    5,
                    (index) => IconButton(
                      onPressed: () {
                        ref.read(starIndexProvider.notifier).setIndex(1, index + 1);
                      },
                      icon: Icon(
                        index < state[1]
                            ? Icons.star
                            : Icons.star_border_outlined,
                        size: 40,
                        color: PColors.mainColor,
                      ),
                    ),
                  ),
                ],
              ),
              isCompare ? Text('2번 화장품', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),) : SizedBox(),
              isCompare ? 
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    5,
                    (index) => IconButton(
                      onPressed: () {
                        ref.read(starIndexProvider.notifier).setIndex(1, index + 1);
                      },
                      icon: Icon(
                        index < state[1]
                            ? Icons.star
                            : Icons.star_border_outlined,
                        size: 40,
                        color: PColors.mainColor,
                      ),
                    ),
                  ),
                ],
              ) : SizedBox(),
              Spacer(),
              CustomButton(
                text: '다음에 하기',
                func: () async {
                  if (loginState) {
                    if (isCompare) {
                      final result = ref.read(IngredientProvider.notifier).getBookMarkData(ref.watch(previousDataProvider),ref.watch(userDataProvider)!.id!);
                      final result2 = ref.read(compareIngredientProvider.notifier).getBookMarkData(ref.watch(compareIngredientProvider),ref.watch(userDataProvider)!.id!);
                      if (result == false || result2 == false) {
                        CustomDialog(
                            context: context,
                            title: '오류가 발생했습니다.',
                            buttonText: '확인',
                            buttonCount: 1,
                            func: () {
                              Navigator.pop(context);
                            });
                      }
                    }
                    if (!isCompare) {
                      final result = ref
                          .read(IngredientProvider.notifier)
                          .getBookMarkData(ref.watch(previousDataProvider),
                              ref.watch(userDataProvider)!.id!);
                      if (result == false) {
                        CustomDialog(
                            context: context,
                            title: '오류가 발생했습니다.',
                            buttonText: '확인',
                            buttonCount: 1,
                            func: () {
                              Navigator.pop(context);
                            });
                      }
                    }
                  }
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return HomeScreen();
                      },
                    ),
                  );
                },
              ),
              SizedBox(
                height: ratio.height * 10,
              ),
              CustomButton(
                text: '결과 확인',
                func: () async {
                  if (loginState) {
                    if (isCompare) {
                      final result = ref.read(IngredientProvider.notifier).getBookMarkData(ref.watch(previousDataProvider),ref.watch(userDataProvider)!.id!);
                      final result2 = ref.read(compareIngredientProvider.notifier).getBookMarkData(ref.watch(compareIngredientProvider),ref.watch(userDataProvider)!.id!);
                      if (result == false || result2 == false) {
                        CustomDialog(
                            context: context,
                            title: '오류가 발생했습니다.',
                            buttonText: '확인',
                            buttonCount: 1,
                            func: () {
                              Navigator.pop(context);
                            });
                      }
                    }
                    if (!isCompare) {
                      final result = ref.read(IngredientProvider.notifier).getBookMarkData(ref.watch(previousDataProvider),ref.watch(userDataProvider)!.id!);
                      await ref.read(starIndexProvider.notifier).analysisEvaluation(memberId: user!.id!, analysisId: analysisId, score1: state[0], score2: state[1], ref: ref);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return RecommendScreen();
                          },
                        ),
                      );
                      if (result == false) {
                        CustomDialog(
                            context: context,
                            title: '오류가 발생했습니다.',
                            buttonText: '확인',
                            buttonCount: 1,
                            func: () {
                              Navigator.pop(context);
                            });
                      }
                    }
                  }
                  
                },
              ),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}
