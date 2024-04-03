import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gproject/common/logo/main_logo.dart';
import 'package:gproject/common/variable/color/color.dart';
import 'package:gproject/common/variable/image_path/image_path.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 33),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 5 * 2,
            ),
            MainLogo(),
            SizedBox(height: 60),
            Text(
              '환영합니다. 이미지를 통한 세밀한 성분 분석과 개인화된 추천을 즐겨보세요!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Spacer(),
            
          ],
        ),
      ),
    );
  }
}
