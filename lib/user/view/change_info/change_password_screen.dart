import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/component/button.dart';
import 'package:gproject/common/component/dialog.dart';
import 'package:gproject/common/component/textformfield.dart';
import 'package:gproject/common/dio/dio.dart';
import 'package:gproject/common/variable/validator.dart';
import 'package:gproject/main.dart';
import 'package:gproject/user/provider/login_provider.dart';

class ChangePasswordScreen extends ConsumerWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userDataProvider)!;
    final gkey = GlobalKey<FormState>();
    TextEditingController nowPwController = TextEditingController();
    TextEditingController newPwController1 = TextEditingController();
    TextEditingController newPwController2 = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 30,
      ),
      child: Form(
        key: gkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '현재 비밀번호',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: ratio.height * 5,
            ),
            CustomTextFormField(
              obsecure: true,
              validator: pwValidator,
              controller: nowPwController,
              hintText: '현재 비밀번호 입력',
            ),
            SizedBox(
              height: ratio.height * 50,
            ),
            Text(
              '새 비밀번호',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: ratio.height * 5,
            ),
            CustomTextFormField(
              obsecure: true,
              validator: pwValidator,
              controller: newPwController1,
              hintText: '새 비밀번호 입력',
            ),
            SizedBox(
              height: ratio.height * 15,
            ),
            CustomTextFormField(
              obsecure: true,
              validator: pwValidator,
              controller: newPwController2,
              hintText: '새 비밀번호 재입력',
            ),
            SizedBox(
              height: ratio.height * 50,
            ),
            CustomButton(
              text: '변경하기',
              func: () async {
                if (gkey.currentState!.validate()) {
                  if (newPwController1.text != newPwController2.text) {
                    CustomDialog(
                      context: context,
                      title: "새 비밀번호를 확인해주세요.",
                      buttonText: '확인',
                      buttonCount: 1,
                      func: () {
                        Navigator.pop(context);
                      },
                    );
                  }if(newPwController1.text == newPwController2.text){
                    try{
                  final resp = await dio.put('${BASE_URL}/api/user/update/password/${user.login_id}',
                    data: {
                      'nowpassword' : nowPwController.text,
                      'newpassword' : newPwController1.text
                    }
                  );
                  if(resp.statusCode == 200){
                    CustomDialog(
                      context: context,
                      title: "변경이 완료되었습니다.\n재로그인 해주세요.",
                      buttonText: '확인',
                      buttonCount: 1,
                      func: () async {
                        ref.read(userDataProvider.notifier).logout(ref, context);
                      },
                    );
                  }
                  }catch(e){

                  }
                  }
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
