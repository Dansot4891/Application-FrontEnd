import 'package:flutter/material.dart';
import 'package:gproject/common/variable/color/color.dart';
import 'package:gproject/common/component/main_text.dart';
import 'package:gproject/common/component/textformfield.dart';
import 'package:gproject/home/view/home_screen.dart';
import 'package:gproject/user/view/signup_screen1.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController idController = TextEditingController();
    TextEditingController pwController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 6 * 1,
            ),
            MainText(),
            SizedBox(
              height: MediaQuery.of(context).size.height / 8 * 1,
            ),
            CustomTextFormField(
              controller: idController,
              hintText: '아이디 입력',
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              controller: pwController,
              hintText: '비밀번호 입력',
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return HomeScreen(); 
                },),);
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 13),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: PColors.mainColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    '로그인',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    '아이디 찾기',
                    style: TextStyle(
                      color: Color(0xFF04060E),
                    ),
                  ),
                ),
                Text(
                  '|',
                  style: TextStyle(
                    color: PColors.grey1.withOpacity(0.3),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    '비밀번호 찾기',
                    style: TextStyle(
                      color: Color(0xFF04060E),
                    ),
                  ),
                ),
                Text(
                  '|',
                  style: TextStyle(
                    color: PColors.grey1.withOpacity(0.3),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SignUpScreen1();
                        },
                      ),
                    );
                  },
                  child: Text(
                    '회원가입',
                    style: TextStyle(
                      color: Color(0xFF04060E),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
