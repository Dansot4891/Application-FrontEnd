import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gproject/common/component/button.dart';
import 'package:gproject/common/variable/color/color.dart';
import 'package:gproject/common/variable/image_path/image_path.dart';
import 'package:gproject/common/component/main_text.dart';
import 'package:gproject/user/view/login/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 6 * 1,
            ),
            MainText(
              size: 45,
            ),
            SizedBox(height: 60),
            Image.asset(
              ImgPath.splashLogo,
            ),
            Spacer(),
            InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 13),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: PColors.mainColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    '비회원으로 시작하기',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            CustomButton(
              text: '회원으로 시작히기',
              func: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
