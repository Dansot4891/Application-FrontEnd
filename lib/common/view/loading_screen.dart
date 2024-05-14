import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/common/variable/image_path.dart';
import 'package:gproject/main.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imgData = [ImgPath.sample4, ImgPath.sample2, ImgPath.sample3];
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              width: ratio.width * 350,
              height: ratio.height * 450,
              child: Swiper(
                itemCount: 3,
                scale: 0,
                loop : true,
                autoplay: true,
                viewportFraction: 1,
                scrollDirection: Axis.horizontal,
                pagination: SwiperPagination(
                  alignment: Alignment.bottomCenter,
                  builder: DotSwiperPaginationBuilder(
                    activeColor: PColors.mainColor,
                    color: PColors.grey3.withOpacity(0.5),
                    size: 12,
                    activeSize: 14,
                    space: 8,
                  ),
                ),
                itemBuilder: (context, index) {
                  return Image.asset(imgData[index], fit: BoxFit.cover,);
                },
              ),
            ),
            SizedBox(height: ratio.height * 40,),
            Image.asset(ImgPath.loading, width: ratio.width * 150, height: ratio.height * 150,),
            SizedBox(height: ratio.height * 10,),
            DefaultTextStyle(
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              child: SizedBox(
                height: ratio.height * 60,
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    FadeAnimatedText('현재 AI 분석중입니다.'),
                    FadeAnimatedText('성분 추출중입니다.', textAlign: TextAlign.center),
                    FadeAnimatedText('잠시만 기다려주세요.'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
