import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/chatbot/model/chatbot_model.dart';
import 'package:gproject/common/dio/dio.dart';

const apiKey = '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';
const apiUrl = 'https://api.openai.com/v1/chat/completions';

final textStateProvider = StateNotifierProvider<TextStateNotifier, bool>((ref) {
  return TextStateNotifier();
});

class TextStateNotifier extends StateNotifier<bool> {
  TextStateNotifier() : super(true); // 초기 값으로 false 설정

  void setState(bool value) {
    state = value;
  }
}

final ChatBotProvider =
    StateNotifierProvider<ChatBotNotifier, List<ChatBotModel>>(
        (ref) => ChatBotNotifier());

class ChatBotNotifier extends StateNotifier<List<ChatBotModel>> {
  ChatBotNotifier()
      : super([
          
        ]);

  Future userQuestion(String text, WidgetRef ref) async {
    ref.read(textStateProvider.notifier).setState(false);
    state = [
      ...state,
      ChatBotModel(
        id: state.length + 1,
        comment: text,
        type: 'user',
      ),
    ];

    try {
      final resp = await dio.post(
        apiUrl,
        options: Options(
          contentType: "application/json",
          headers: {'Authorization': 'Bearer $apiKey'},
        ),
        data: {
          "messages": [
            {
              "content": text,
              "role": "user",
            },
          ],
          "model": "gpt-4-turbo",
        },
      );

      if (resp.statusCode == 200) {
        String respText = resp.data["choices"][0]["message"]["content"];
        state = [
          ...state,
          ChatBotModel(
            id: state.length + 1,
            comment: respText,
            type: 'ai',
          )
        ];
        ref.read(textStateProvider.notifier).setState(true);
      }
    } catch (e) {
      print(e);
      ref.read(textStateProvider.notifier).setState(true);
    }
  }
}
