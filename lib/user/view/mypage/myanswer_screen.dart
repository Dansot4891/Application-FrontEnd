import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/component/button.dart';
import 'package:gproject/common/view/default_layout.dart';
import 'package:gproject/user/provider/QandA_provider.dart';

class MyAnswerScreen extends ConsumerWidget {
  final int id;
  const MyAnswerScreen({
    required this.id,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.read(QandAProvider.notifier).getDetail(id);
    return DefaultLayout(
      child: model == null
          ? Center(
              child: Text(
                '오류입니다. 다시 시도해주세요.',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 25,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Text(
                      '나의 문의',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextBox(text: model.title),
                    TextBox(text: model.description),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 15 * 1,
                    ),
                    Text(
                      '답변',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextBox(
                      text: model.answer,
                    ),
                    
                  ],
                ),
              ),
            ),
    );
  }

  Container TextBox({
    required String? text,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 15,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 15,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: Colors.black.withOpacity(0.3),
        ),
      ),
      child: Text(
        text!,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
