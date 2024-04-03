import 'package:flutter/material.dart';
import 'package:gproject/common/variable/color/color.dart';

class MainButton extends StatelessWidget {
  
  const MainButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 17),
        width: double.infinity,
        decoration: BoxDecoration(
          color: PColors.mainColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            'data',
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
