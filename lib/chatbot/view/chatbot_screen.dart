import 'package:flutter/material.dart';
import 'package:gproject/common/view/default_layout.dart';

class ChatBotScreen extends StatelessWidget {
  const ChatBotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      keyboard: true,
      child: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: ((context, index) {
                return;
              }),
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
              itemCount: 4,
            ),
          ),
        ],
      ),
    );
  }
}
