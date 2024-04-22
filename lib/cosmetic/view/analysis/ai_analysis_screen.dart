import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/component/button.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/cosmetic/provider/anlysis/analysis_provider.dart';
import 'package:gproject/main.dart';
import 'package:gproject/user/provider/login_provider.dart';
import 'package:gproject/user/view/login/signup_screen1.dart';

class AIAnalysisScreen extends ConsumerWidget {
  const AIAnalysisScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<String> scoreList = [
      '찰떡궁합',
      '추천해요',
      '꽤 괜찮아요',
      '보통이에요',
      '글쎄요',
      '다시\n생각해보세요',
    ];
    List<String> typeList = [
      '없음',
      '부족',
      '보통',
      '충분',
    ];
    final data = ref.watch(AnalysisProvider);
    final loginState = ref.watch(loginStateProvider);
    print(data.type_posit);
    print(data.type_nega);
    print(data.type_danger);
    return loginState
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Column(
              children: [
                AIAnalysis(comment: data.ai_description),
                SizedBox(
                  height: ratio.height * 40,
                ),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2,
                    ),
                    itemCount: scoreList.length,
                    itemBuilder: (BuildContext context, index) {
                      return index == (data.score-1)
                          ? GridViewBox(title: scoreList[index], selected: true)
                          : GridViewBox(title: scoreList[index]);
                    },
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    color: PColors.mainColor,
                  ))),
                  child: Center(
                    child: Text(
                      "${ref.read(userDataProvider.notifier).skinTypeData()}피부 타입",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: ratio.height * 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            '긍정 성분 수',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            typeList[data.type_posit],
                            style: TextStyle(
                              color: data.type_posit == 3
                                  ? PColors.subColor3
                                  : data.type_posit == 2
                                  ? PColors.mainColor
                                  : data.type_posit == 1
                                  ? PColors.grey3
                                  : PColors.grey2,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '부정 성분 수',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            typeList[data.type_nega],
                            style: TextStyle(
                            color: data.type_nega == 3
                                  ? PColors.subColor3
                                  : data.type_nega == 2
                                  ? PColors.mainColor
                                  : data.type_nega == 1
                                  ? PColors.grey3
                                  : PColors.grey2,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '주의 성분 수',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            typeList[data.type_danger],
                            style: TextStyle(
                            color: data.type_danger == 3
                                  ? PColors.subColor3
                                  : data.type_danger == 2
                                  ? PColors.mainColor
                                  : data.type_danger == 1
                                  ? PColors.grey3
                                  : PColors.grey2,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        : Center(
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
