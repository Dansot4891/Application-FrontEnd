import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/common/view/default_layout.dart';
import 'package:gproject/user/model/QandA_model.dart';
import 'package:gproject/user/provider/QandA_provider.dart';
import 'package:gproject/user/view/mypage/myanswer_screen.dart';

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
      child: Column(
        children: [
          AnswerBigBox(
            context: context,
            title: '답변 완료',
            model: yesList,
          ),
          AnswerBigBox(
            context: context,
            title: '답변 미완료',
            underBorder: false,
            model: noList,
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
      height: MediaQuery.of(context).size.height / 5 * 2,
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
                    print(model[index].qna_id);
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
