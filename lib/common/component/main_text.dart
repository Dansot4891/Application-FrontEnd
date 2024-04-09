import 'package:flutter/material.dart';

class MainText extends StatelessWidget {
  final double size;
  const MainText({this.size = 40, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Intelly cosm',
      style: TextStyle(
        fontSize: size,
        fontFamily: 'KaushanScript',
      ),
    );
  }
}
