import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/component/button.dart';
import 'package:gproject/common/component/dialog.dart';
import 'package:gproject/common/component/textformfield.dart';
import 'package:gproject/common/dio/dio.dart';
import 'package:gproject/common/variable/validator.dart';
import 'package:gproject/common/view/default_layout.dart';
import 'package:gproject/user/component/signup_radio_button.dart';
import 'package:gproject/user/model/user_model.dart';
import 'package:gproject/user/provider/signup_provider.dart';
import 'package:gproject/user/view/login/login_screen.dart';

class SignUpScreen2 extends ConsumerWidget {
  final String id;
  final String nickname;
  final String password;
  const SignUpScreen2(
      {required this.id,
      required this.nickname,
      required this.password,
      super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gkey = GlobalKey<FormState>();
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController birthController = TextEditingController();
    TextEditingController allergieController = TextEditingController();
    return DefaultLayout(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 30,
              ),
              child: Form(
                key: gkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextFormField(
                      validator: nameValidator,
                      controller: nameController,
                      hintText: '이름 입력',
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    CustomTextFormField(
                      validator: signupEmailValidator,
                      controller: emailController,
                      hintText: '이메일 입력',
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    BirthTextField(
                        validator: birthValidator,
                        controller: birthController,
                        hintText: '생년 월일 입력(숫자만)'),
                    SizedBox(
                      height: 12,
                    ),
                    CustomTextFormField(
                      controller: allergieController,
                      hintText: '알레르기 질환 입력(미기재 가능)',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '성별',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 30),
                      child: SignupRadioButtonRow(
                        type: '성별',
                      ),
                    ),
                    Text(
                      '피부 타입',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 30),
                      child: SignupRadioButtonRow(
                        type: '피부타입',
                      ),
                    ),
                    Text(
                      '피부 고민',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 30),
                      child: SignupRadioButtonRow(
                        type: '피부고민',
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    CustomButton(
                      text: '회원가입',
                      func: () async {
                        if (gkey.currentState!.validate()) {
                          final user = UserModel(
                            name: nameController.text,
                            nickname: nickname,
                            password: password,
                            login_id: id,
                            birth: birthController.text,
                            gender: ref
                                .read(genderButtonProvider.notifier)
                                .postValue(),
                            email: emailController.text,
                            skin_type: ref
                                .read(typeButtonProvider.notifier)
                                .postValue(),
                            skin_concerns: ref
                                .read(worryButtonProvider.notifier)
                                .postValue(),
                            allergy: allergieController.text == "" ? "X" : allergieController.text,
                          );
                          final data = user.toJson();
                          data.remove('id');
                          try {
                            final resp = await dio.post(
                              'http://ceprj.gachon.ac.kr:60006/api/user/signup',
                              data: jsonEncode(data),
                            );
                            if (resp.statusCode == 200) {
                              print(data);
                              CustomDialog(
                                context: context,
                                title: '회원가입이 완료됐습니다!',
                                buttonText: '확인',
                                buttonCount: 1,
                                func: () {
                                  print('성공');
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
                            } else {
                              print('실패');
                              CustomDialog(
                                context: context,
                                title: '에러가 발생하였습니다\n다시 시도해주세요.',
                                buttonText: '확인',
                                buttonCount: 1,
                                func: () {
                                  ref
                                      .read(genderButtonProvider.notifier)
                                      .reset();
                                  ref.read(typeButtonProvider.notifier).reset();
                                  ref
                                      .read(worryButtonProvider.notifier)
                                      .reset();
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
                            }
                          } catch (e) {
                            print(e);
                          }
                          ref.read(genderButtonProvider.notifier).reset();
                          ref.read(typeButtonProvider.notifier).reset();
                          ref.read(worryButtonProvider.notifier).reset();
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
