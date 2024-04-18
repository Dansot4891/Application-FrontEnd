import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/component/button.dart';
import 'package:gproject/common/component/dialog.dart';
import 'package:gproject/common/component/textformfield.dart';
import 'package:gproject/common/dio/dio.dart';
import 'package:gproject/common/variable/validator.dart';
import 'package:gproject/common/view/default_layout.dart';
import 'package:gproject/main.dart';
import 'package:gproject/user/provider/login_provider.dart';
import 'package:gproject/user/view/mypage/mypage_screen.dart';

class QuestionScreen extends ConsumerWidget {
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gkey = GlobalKey<FormState>();
    TextEditingController title = TextEditingController();
    TextEditingController content = TextEditingController();
    return DefaultLayout(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Form(
          key: gkey,
          child: Column(
            children: [
              CustomTextFormField(
                  validator: titleValidator,
                  controller: title,
                  hintText: '제목을 입력해주세요.'),
              SizedBox(
                height: ratio.height * 30,
              ),
              Expanded(
                child: CustomTextFormField(
                  validator: contentValidator,
                  controller: content,
                  hintText: '내용을 입력해주세요.',
                  expand: true,
                ),
              ),
              SizedBox(
                height: ratio.height * 100,
              ),
              CustomButton(
                text: '문의하기',
                func: () async {
                  if (gkey.currentState!.validate()) {
                    final resp = await dio.post('${BASE_URL}/api/user/qna/writing/${ref.watch(userDataProvider)!.login_id}',
                      data: {
                        "title" : title.text,
                        "description" : content.text
                      }
                    );
                    if(resp.statusCode == 200){
                      CustomDialog(
                        context: context,
                        title: '문의 작성이 완료되었습니다!',
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
                  }
                },
              ),
              SizedBox(
                height: ratio.height * 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
