import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gproject/common/variable/color.dart';

class IngredientBar extends StatelessWidget {
  final int level;
  final String ingredientName;
  final String purpose;
  final String function;
  const IngredientBar({
    required this.level,
    required this.ingredientName,
    required this.purpose,
    required this.function,
    super.key,});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 15),
          height: 50,
          width: 10,
          color: (level == 1 || level == 2) ? PColors.safe : (level == 3 || level == 4 || level == 5) ? PColors.halfDanger : PColors.danger,
        ),
        Expanded(
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              color: PColors.mainColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      level.toString(),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: (level == 1 || level == 2) ? PColors.safe : (level == 3 || level == 4 || level == 5) ? PColors.halfDanger : PColors.danger,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ingredientName,
                        style: TextStyle(
                          fontSize: 16,
                          color: PColors.darkgrey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '성분 목적 : ' + purpose,
                        style: TextStyle(
                          fontSize: 12,
                          color: PColors.darkgrey,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '성분 기능 : ' + function,
                        style: TextStyle(
                          fontSize: 12,
                          color: PColors.darkgrey,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.bookmark,
                        color: PColors.bookMark,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
