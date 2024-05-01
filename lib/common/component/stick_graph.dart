import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/main.dart';

class StickGraph extends StatelessWidget {
  final double height;
  final double percent;
  final Color color1;
  final Color color2;
  final double padding;
  bool appearNum;
  StickGraph({
    this.height = 35,
    this.color1 = PColors.mainColor,
    this.color2 = PColors.grey2,
    required this.percent,
    required this.padding,
    this.appearNum = true,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          width: MediaQuery.of(context).size.width,
          height: ratio.height * height,
          decoration: BoxDecoration(
            color: color2,
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          width: (MediaQuery.of(context).size.width - padding) / 100 * percent,
          height: ratio.height * height,
          decoration: BoxDecoration(
            color: color1,
            borderRadius: BorderRadius.circular(24),
          ),
          child: appearNum ? Center(
            child: Text(
              '${percent}%',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ) : null,
        ),
      ],
    );
  }
}