import 'package:flutter/material.dart';
import 'package:gproject/common/variable/color/color.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback func;
  const CustomButton({
    required this.text,
    required this.func,
    super.key,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: func,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 13),
        width: double.infinity,
        decoration: BoxDecoration(
          color: PColors.mainColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
