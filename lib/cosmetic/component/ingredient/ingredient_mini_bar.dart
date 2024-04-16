import 'package:flutter/material.dart';
import 'package:gproject/common/variable/color.dart';

class IngredientMiniBar extends StatelessWidget {
  final int grade;
  final String name;
  final double fontSize;
  final VoidCallback func;
  const IngredientMiniBar({
    required this.grade,
    required this.name,
    required this.fontSize,
    required this.func,
    super.key,});

  @override
  Widget build(BuildContext context) {
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: PColors.safe,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  grade.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              name,
              style: TextStyle(fontSize: fontSize+2, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        GestureDetector(
          onTap: func,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Icon(Icons.bookmark,
                  size: 37, color: Color(0xFF636363).withOpacity(0.8)),
              Icon(
                Icons.bookmark,
                size: 30,
                color: PColors.bookMark,
              )
            ],
          ),
        )
      ],
    );
  }
}