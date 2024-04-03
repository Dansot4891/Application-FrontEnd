import 'package:flutter/material.dart';
import 'package:gproject/common/variable/color/color.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const CustomTextFormField({
    required this.controller,
    required this.hintText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        fontSize: 16,
        color: Colors.black,
      ),
      controller: controller,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 16,
          color: PColors.grey1.withOpacity(0.4),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: PColors.grey1.withOpacity(0.2),
            )),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: PColors.grey1.withOpacity(0.2),
            )),
      ),
    );
  }
}
