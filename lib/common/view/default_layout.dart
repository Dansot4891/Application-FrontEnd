import 'package:flutter/material.dart';
import 'package:gproject/common/component/main_text.dart';
import 'package:gproject/common/variable/color.dart';

class DefaultLayout extends StatelessWidget {
  final Widget child;
  final bool isBoard;
  final bool keyboard;
  const DefaultLayout({required this.child, this.isBoard = false, this.keyboard = false, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: keyboard,
      appBar: AppBar(
        shape: isBoard ? Border(
          bottom: BorderSide(
            color: PColors.mainColor,
            width: 1,
          ),
        ) : null,
        centerTitle: true,
        title: MainText(
          size: 30,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            size: 35,
          ),
        ),
      ),
      body: child,
    );
  }
}
