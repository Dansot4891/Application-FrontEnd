import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/chatbot/date/date.dart';
import 'package:gproject/chatbot/model/chatbot_model.dart';
import 'package:gproject/chatbot/provider/chatbot_provider.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/common/variable/image_path.dart';
import 'package:gproject/common/view/default_layout.dart';
import 'package:gproject/main.dart';

class ChatBotScreen extends ConsumerWidget {
  const ChatBotScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<ChatBotModel> data = ref.watch(ChatBotProvider);
    Date currentDate = Date();
    currentDate.setWeekend();
    currentDate.setTime();
    TextEditingController controller = TextEditingController();
    bool enabled = ref.watch(textStateProvider);
    return DefaultLayout(
      bottomSheet:
          bottomSheet(controller: controller, ref: ref, enabled: enabled),
      keyboard: true,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: data.length == 0
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(ImgPath.chatbotLogo),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      '무엇을 도와드릴까요?',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '답변을 받으시는데 시간이 조금 걸릴 수 있습니다.',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: PColors.grey3),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )
            : Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                      itemBuilder: ((context, index) {
                        if (index == 0) {
                          return Column(
                            children: [
                              dateRow(
                                  date:
                                      '${currentDate.year}년 ${currentDate.month}월 ${currentDate.day}일 ${currentDate.weekend}'),
                              ChatBox(
                                type: data[index].type,
                                text: data[index].comment,
                                context: context,
                                hour: currentDate.hour,
                                minute: currentDate.minute,
                              ),
                            ],
                          );
                        }
                        if (index == data.length - 1) {
                          return Column(
                            children: [
                              ChatBox(
                                type: data[index].type,
                                text: data[index].comment,
                                context: context,
                                hour: currentDate.hour,
                                minute: currentDate.minute,
                              ),
                              SizedBox(height: ratio.height * 80),
                            ],
                          );
                        }
                        return ChatBox(
                          type: data[index].type,
                          text: data[index].comment,
                          context: context,
                          hour: currentDate.hour,
                          minute: currentDate.minute,
                        );
                      }),
                      separatorBuilder: (BuildContext context, int index) =>
                          SizedBox(
                        height: ratio.height * 30,
                      ),
                      itemCount: data.length,
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  Padding dateRow({required String date}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Divider(
              thickness: 0.5,
              color: PColors.grey3,
            ),
          ),
          Text(
            ' ${date} ',
            style: TextStyle(color: PColors.grey3, fontSize: 16),
          ),
          Expanded(
            child: Divider(
              thickness: 0.5,
              color: PColors.grey3,
            ),
          ),
        ],
      ),
    );
  }

  Row ChatBox({
    required String type,
    required String text,
    required int hour,
    required int minute,
    required BuildContext context,
  }) {
    return type == 'ai'
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    left: -3,
                    bottom: -2,
                    child: Image.asset(ImgPath.ai_chatbox_tail),
                  ),
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width / 5 * 3,
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                      color: PColors.subColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      text,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 7,
              ),
              Text(
                '${hour}:${minute}',
                style: TextStyle(
                  fontSize: 14,
                  color: PColors.grey3,
                ),
              )
            ],
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '${hour}:${minute}',
                style: TextStyle(
                  fontSize: 14,
                  color: PColors.grey3,
                ),
              ),
              SizedBox(
                width: 7,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    right: -3,
                    bottom: -2,
                    child: Image.asset(ImgPath.user_chatbox_tail),
                  ),
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width / 5 * 3,
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                      color: PColors.mainColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      text,
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          );
  }

  TextField bottomSheet({
    required TextEditingController controller,
    required WidgetRef ref,
    required bool enabled,
  }) {
    return TextField(
      enabled: enabled,
      textAlignVertical: TextAlignVertical.top,
      style: TextStyle(
        fontSize: 16,
        color: Colors.black,
      ),
      minLines: 1,
      maxLines: 100,
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.zero,
        ),
        filled: true,
        fillColor: Colors.white,
        suffixIcon: IconButton(
            onPressed: () {
              if (controller.text == '') {
                print('실패');
                null;
              } else {
                ref
                    .read(ChatBotProvider.notifier)
                    .userQuestion(controller.text, ref);
                controller.text = '';
              }
            },
            icon: Icon(
              Icons.send,
              color: PColors.mainColor,
            )),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        hintText: '메세지를 입력해주세요.',
        hintStyle: TextStyle(
          fontSize: 16,
          color: PColors.grey3,
        ),
      ),
    );
  }
}
