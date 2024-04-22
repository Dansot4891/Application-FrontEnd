import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/component/button.dart';
import 'package:gproject/common/component/dialog.dart';
import 'package:gproject/common/component/textformfield.dart';
import 'package:gproject/common/dio/dio.dart';
import 'package:gproject/common/secure_storage/secure_storage.dart';
import 'package:gproject/common/variable/validator.dart';
import 'package:gproject/main.dart';
import 'package:gproject/user/component/signup_radio_button.dart';
import 'package:gproject/user/model/user_model.dart';
import 'package:gproject/user/provider/login_provider.dart';
import 'package:gproject/user/provider/signup_provider.dart';
import 'package:gproject/user/view/mypage/mypage_screen.dart';

class ChangePersonalInfoScreen extends ConsumerWidget {
  const ChangePersonalInfoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gkey = GlobalKey<FormState>();
    final userData = ref.watch(userDataProvider);
    TextEditingController nameController =
        TextEditingController(text: userData!.nickname);
    TextEditingController emailController =
        TextEditingController(text: userData.email);
    TextEditingController allergieController =
        TextEditingController(text: userData.allergy);

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            child: Form(
              key: gkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: '이름',
                  ),
                  SizedBox(
                    height: ratio.height * 5,
                  ),
                  Text(
                    userData.name,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: ratio.height * 20,
                  ),
                  CustomText(
                    text: '생년 월일',
                  ),
                  SizedBox(
                    height: ratio.height * 5,
                  ),
                  Text(
                    userData.birth,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: ratio.height * 20,
                  ),
                  CustomText(
                    text: '닉네임',
                  ),
                  SizedBox(
                    height: ratio.height * 5,
                  ),
                  CustomTextFormField(
                    validator: nameValidator,
                    controller: nameController,
                    hintText: '닉네임 입력',
                  ),
                  SizedBox(
                    height: ratio.height * 20,
                  ),
                  CustomText(
                    text: '이메일',
                  ),
                  SizedBox(
                    height: ratio.height * 5,
                  ),
                  CustomTextFormField(
                    validator: signupEmailValidator,
                    controller: emailController,
                    hintText: '이메일 입력',
                  ),
                  SizedBox(
                    height: ratio.height * 20,
                  ),
                  CustomText(
                    text: '알레르기',
                  ),
                  SizedBox(
                    height: ratio.height * 5,
                  ),
                  CustomTextFormField(
                    controller: allergieController,
                    hintText: '알레르기 입력',
                  ),
                  SizedBox(
                    height: ratio.height * 20,
                  ),
                  CustomText(
                    text: '성별',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 30),
                    child: SignupRadioButtonRow(
                      type: '성별',
                    ),
                  ),
                  CustomText(
                    text: '피부 타입',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 30),
                    child: SignupRadioButtonRow(
                      type: '피부타입',
                    ),
                  ),
                  CustomText(
                    text: '피부 고민',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 30),
                    child: SignupRadioButtonRow(
                      type: '피부고민',
                    ),
                  ),
                  Spacer(),
                  CustomButton(
                    text: '수정하기',
                    func: () async {
                      if (gkey.currentState!.validate()) {
                        try {
                          final user = UserModel(
                              name: userData.name,
                              nickname: nameController.text,
                              login_id: userData.login_id,
                              birth: userData.birth,
                              gender: ref
                                  .read(genderButtonProvider.notifier)
                                  .postValue(),
                              email: emailController.text,
                              skin_type: ref
                                  .read(typeButtonProvider.notifier)
                                  .postValue(),
                              skin_concern: ref
                                  .read(worryButtonProvider.notifier)
                                  .postValue(),
                              allergy: allergieController.text);
                              print(jsonEncode(user.toJson()));
                          final resp = await dio.put(
                              '${BASE_URL}/api/user/update_profile/${userData.login_id}',
                              data: jsonEncode(user.toJson()));
                          if (resp.statusCode == 200) {
                            // final storage = ref.watch(secureStorageProvider);
                            // await storage.write(
                            //     key: 'user', value: jsonEncode(user.toJson()));
                            ref
                                .read(userDataProvider.notifier)
                                .updateUserModel2(ref, user);
                            CustomDialog(
                              context: context,
                              title: '수정이 완료되었습니다!',
                              buttonText: '확인',
                              buttonCount: 1,
                              func: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return MyPageScreen();
                                    },
                                  ),
                                );
                              },
                            );
                          }
                        } catch (e) {
                          print(e);
                        }
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Text CustomText({
    required String text,
  }) {
    return Text(
      text,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
    );
  }
}
