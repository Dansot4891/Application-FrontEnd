import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/component/button.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/common/view/default_layout.dart';
import 'package:gproject/main.dart';
import 'package:gproject/user/model/QandA_model.dart';
import 'package:gproject/user/provider/QandA_provider.dart';
import 'package:gproject/user/view/mypage/myanswer_screen.dart';
import 'package:gproject/user/view/mypage/question_screen.dart';

class AnswerScreen extends ConsumerWidget {
  const AnswerScreen({super.key});

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    List<QandAModel> yesList = ref.read(QandAProvider.notifier).fetchYesData();
    List<QandAModel> noList = ref.read(QandAProvider.notifier).fetchNoData();
    return DefaultLayout(
      child: (noList.length == 0 && yesList.length == 0)
          ? Center(
              child: Column(
                children: [
                  Icon(
                    Icons.close,
                    size: 50,
                  ),
                  Text(
                    '문의 내역이 없습니다.',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            )
          : Column(
              children: [
                AnswerBigBox(
                  context: context,
                  title: '답변 완료',
                  model: yesList,
                ),
                SizedBox(
                  height: ratio.height * 30,
                ),
                AnswerBigBox(
                  context: context,
                  title: '답변 미완료',
                  underBorder: false,
                  model: noList,
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 25,
                  ),
                  child: CustomButton(
                    text: '문의하러 가기',
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
                ),
              ],
            ),
    );
  }

  Container AnswerBigBox({
    required List<QandAModel> model,
    required BuildContext context,
    required String title,
    bool underBorder = true,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      width: double.infinity,
      height: ratio.height * 310,
      decoration: BoxDecoration(
          border: underBorder
              ? Border(
                  bottom: BorderSide(color: PColors.grey2, width: 1),
                )
              : null),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: model.length,
              itemBuilder: (BuildContext context, int index) {
                return AnswerBox(
                  title: model[index].qna_subject,
                  content: model[index].qna_content,
                  answer: model[index].answer_status,
                  func: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return MyAnswerScreen(
                            id: model[index].qna_id,
                          );
                        },
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector AnswerBox({
    required String title,
    required String content,
    required VoidCallback func,
    bool answer = true,
  }) {
    return GestureDetector(
      onTap: func,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: PColors.grey3.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(3, 3))
          ],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: answer ? PColors.mainColor : PColors.grey3),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              content,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
              maxLines: 1,
            ),
          ],
        ),
      ),
    );
  }
}
