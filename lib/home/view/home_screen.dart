import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gproject/chatbot/view/chatbot_screen.dart';
import 'package:gproject/common/component/dialog.dart';
import 'package:gproject/common/component/main_text.dart';
import 'package:gproject/common/variable/color/color.dart';
import 'package:gproject/common/variable/image_path/image_path.dart';
import 'package:gproject/cosmetic/view/analysis/analysis_screen.dart';
import 'package:gproject/cosmetic/view/costetics/cosmetics_screen.dart';
import 'package:gproject/cosmetic/view/recommend/recommend_screen.dart';
import 'package:gproject/main.dart';
import 'package:gproject/cosmetic/view/analysis/image_upload_screen.dart';
import 'package:gproject/user/view/mypage/mypage_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: MainText(
            size: 30,
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return MyPageScreen();
                },),);
              },
              icon: Icon(
                Icons.account_circle_outlined,
                size: 35,
              ),
            ),
            IconButton(
              onPressed: () {
                CustomDialog(context: context, title: '로그아웃 하시겠습니까?', buttonText: '확인', buttonCount: 2, func: (){Navigator.pop(context);});
              },
              icon: Icon(
                Icons.logout,
                size: 30,
              ),
            ),
          ],
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ImgPath.mainBack,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 20),
                      height: MediaQuery.of(context).size.height / 7 * 1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          mainButton(
                            ImgPath.cosmeticLogo,
                            "화장품",
                            () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return CosmeticsScreen();
                                  },
                                ),
                              );
                            },
                          ),
                          mainButton(
                            ImgPath.ingredientLogo,
                            "성분",
                            () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return ChatBotScreen();
                                  },
                                ),
                              );
                            },
                          ),
                          mainButton(
                            ImgPath.chatbotLogo,
                            "상담",
                            () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return ChatBotScreen();
                                  },
                                ),
                              );
                            },
                          ),
                          mainButton(
                            ImgPath.QandALogo,
                            "Q&A",
                            () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return ChatBotScreen();
                                  },
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: ratio.height * 20,
                    ),
                    Column(
                      children: [
                        mainBigButton(
                            title: '내 화장품\n 성분 분석',
                            text: '사진을 통해 화장품의\n성분을 분석합니다.',
                            imgPath: ImgPath.analysis,
                            route: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return ImageUpLoadScreen();
                              }));
                            }),
                        mainBigButton(
                            title: '내 화장품\n 성분 비교 분석',
                            text: '사진을 통해 화장품의\n성분을 비교 분석합니다.',
                            imgPath: ImgPath.compare_analysis,
                            route: () {
                              CustomDialog(context: context, title: '안녕하세요안녕하세요안녕하세요안녕하세요안녕하세요', buttonCount: 2,  buttonText: null, func: (){});
                            }),
                        mainBigButton(
                            title: 'AI 추천',
                            text: 'AI가 사용자의 취향을\n분석하여 맞춤형 추천을\n해드립니다.',
                            imgPath: ImgPath.ai_recommend,
                            route: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return RecommendScreen();
                              }));
                            }),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }

  Column mainButton(
    String imgpath,
    String title,
    VoidCallback func,
  ) {
    return Column(
      children: [
        InkWell(
          onTap: func,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            width: ratio.width * 70,
            height: ratio.height * 70,
            decoration: BoxDecoration(
              color: PColors.subColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(
              imgpath,
            ),
          ),
        ),
        Text(title),
      ],
    );
  }

  InkWell mainBigButton({
    required String title,
    required String text,
    required String imgPath,
    required VoidCallback route,
  }) {
    return InkWell(
      onTap: route,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 20,
        ),
        margin: const EdgeInsets.only(
          left: 35,
          right: 20,
          bottom: 20,
        ),
        width: double.infinity,
        height: ratio.height * 200,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(6, 6))
            ],
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFFFF6F6),
                  Colors.white,
                ])),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: ratio.height * 20,
                ),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: ratio.width * 20,
            ),
            Image.asset(
              imgPath,
            ),
          ],
        ),
      ),
    );
  }
}