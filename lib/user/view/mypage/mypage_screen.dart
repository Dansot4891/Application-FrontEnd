import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/component/dialog.dart';
import 'package:gproject/common/secure_storage/secure_storage.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/common/view/default_layout.dart';
import 'package:gproject/common/view/home_screen.dart';
import 'package:gproject/common/view/splash_screen.dart';
import 'package:gproject/cosmetic/provider/ingredient/ingredient_provider.dart';
import 'package:gproject/cosmetic/view/ingredient/ingredient_screen.dart';
import 'package:gproject/user/provider/login_provider.dart';
import 'package:gproject/user/view/login/login_screen.dart';
import 'package:gproject/user/view/mypage/answer_screen.dart';
import 'package:gproject/user/view/change_info/change_info_screen.dart';
import 'package:gproject/user/view/mypage/question_screen.dart';

class MyPageScreen extends ConsumerWidget {
  const MyPageScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userData = ref.watch(userDataProvider);
    final loginState = ref.watch(loginStateProvider);
    TextEditingController controller = TextEditingController();
    List<Widget> buttons = loginState
        ? [
            MyPageButton(
              icon: Icon(
                Icons.settings_outlined,
                size: 40,
              ),
              text: '개인정보 변경',
              func: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ChangeInfoScreen();
                    },
                  ),
                );
              },
            ),
            MyPageButton(
              icon: Icon(
                Icons.help_outline,
                size: 40,
              ),
              text: '문의하기',
              func: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return QuestionScreen();
                    },
                  ),
                );
              },
            ),
            MyPageButton(
              icon: Icon(
                Icons.check_circle_outline,
                size: 40,
              ),
              text: '문의내역',
              func: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AnswerScreen();
                    },
                  ),
                );
              },
            ),
            MyPageButton(
              icon: Icon(
                Icons.inventory_2_outlined,
                size: 40,
              ),
              text: '전체 성분 확인하기',
              func: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return IngredientScreen();
                    },
                  ),
                );
              },
            ),
            MyPageButton(
              icon: Icon(
                Icons.inventory_outlined,
                size: 40,
              ),
              text: '나의 성분 확인하기',
              func: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return IngredientScreen();
                    },
                  ),
                );
              },
            ),
            MyPageButton(
              icon: Icon(
                Icons.logout_outlined,
                size: 40,
              ),
              text: '로그아웃',
              func: () {
                CustomDialog(
                  context: context,
                  title: '로그아웃 하시겠습니까?',
                  buttonText: null,
                  buttonCount: 2,
                  func: () async {
                    await ref.watch(secureStorageProvider).deleteAll();
                    await ref.read(userDataProvider.notifier).deleteData();
                    Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
                  },
                );
              },
            ),
            MyPageButton(
              icon: Icon(
                Icons.person_remove_outlined,
                size: 40,
              ),
              text: '회원탈퇴',
              func: () {
                signupDialog(
                  context: context,
                  func: () {
                    if (controller.text == '회원탈퇴') {
                      CustomDialog(
                        context: context,
                        title: '회원탈퇴가 완료되었습니다.',
                        buttonText: '확인',
                        buttonCount: 1,
                        func: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return SplashScreen();
                              },
                            ),
                          );
                        },
                      );
                    } else {
                      CustomDialog(
                        context: context,
                        title: '정확히 입력해주세요.',
                        buttonText: '확인',
                        buttonCount: 1,
                        func: () {
                          Navigator.pop(context);
                        },
                      );
                    }
                  },
                  controller: controller,
                );
              },
            ),
          ]
        : [
            MyPageButton(
              icon: Icon(
                Icons.inventory_outlined,
                size: 40,
              ),
              text: '성분 확인하기',
              func: () async {
                ref.read(IngredientProvider.notifier).fetchDate();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return IngredientScreen();
                    },
                  ),
                );
              },
            ),
            MyPageButton(
              icon: Icon(
                Icons.login_outlined,
                size: 40,
              ),
              text: '로그인',
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
            ),
            MyPageButton(
              icon: Icon(
                Icons.person_add_outlined,
                size: 40,
              ),
              text: '회원가입',
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
            ),
          ];
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
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 35),
        child: Column(
          children: [
            Info(
              name: userData == null ? null : userData.name,
              birth: userData == null ? null : userData.birth,
              email: userData == null ? null : userData.email,
            ),
            SizedBox(
              height: 30,
            ),
            ...List.generate(
              buttons.length,
              (index) => Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: buttons[index],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column Info({
    String? name,
    String? birth,
    String? email,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name == null ? '사용자' : name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              birth == null ? '-' : birth,
              style: TextStyle(
                color: PColors.grey3,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          email == null ? '-' : email,
          style: TextStyle(
            color: PColors.grey3,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  InkWell MyPageButton({
    required Icon icon,
    required String text,
    required VoidCallback func,
  }) {
    return InkWell(
      onTap: func,
      child: Row(
        children: [
          icon,
          SizedBox(
            width: 15,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
