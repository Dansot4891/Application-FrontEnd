import 'package:flutter/material.dart';
import 'package:gproject/common/variable/color.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  bool expand;
  bool obsecure;
  final String? Function(String?)? validator;
  CustomTextFormField({
    required this.controller,
    required this.hintText,
    this.expand = false,
    this.obsecure = false,
    this.validator,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsecure,
      validator: validator == null ? null : validator,
      expands: expand,
      textAlignVertical: TextAlignVertical.top,
      style: TextStyle(
        fontSize: 16,
        color: Colors.black,
      ),
      minLines: !expand ? 1 : null,
      maxLines: !expand ? 1 : null,
      controller: controller,
      decoration: InputDecoration(
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        errorBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
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
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: PColors.grey1.withOpacity(0.2),
          ),
        ),
      ),
    );
  }
}

class BirthTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String? Function(String?)? validator;
  const BirthTextField({
    required this.controller,
    required this.hintText,
    this.validator,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: 10,
      validator: validator == null ? null : validator,
      controller: controller,
      onChanged: (value) {
        if (value.length == 8) {
          String formattedDate =
              "${value.substring(0, 4)}.${value.substring(4, 6)}.${value.substring(6, 8)}";
          controller.value = TextEditingValue(
            text: formattedDate,
            selection: TextSelection.fromPosition(
              TextPosition(offset: formattedDate.length),
            ),
          );
        }
      },
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        counterText: '',
        errorBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
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
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: PColors.grey1.withOpacity(0.2),
          ),
        ),
      ),
    );
  }
}
