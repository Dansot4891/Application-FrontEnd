import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/variable/color.dart';

class IngredientBar extends ConsumerWidget {
  final int level;
  final String ingredientName;
  final List<String> purposes;
  final List<String> features;
  final bool bookMark;
  final VoidCallback func;
  IngredientBar({
    required this.level,
    required this.ingredientName,
    required this.purposes,
    required this.features,
    required this.bookMark,
    required this.func,
    super.key,});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 15),
          constraints: BoxConstraints(
            minHeight: 50,
          ),
          width: 10,
          color: (level == 1 || level == 2) ? PColors.safe : (level == 3 || level == 4 || level == 5) ? PColors.halfDanger : PColors.danger,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: PColors.subColor2,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: PColors.grey3.withOpacity(0.5),
                  offset: Offset(3, 3),
                  blurRadius: 3,
                  spreadRadius: 2,
                )
              ]
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                        fontSize: 18,
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
                        '성분 목적 : ' + purposes.join(', '),
                        style: TextStyle(
                          fontSize: 12,
                          color: PColors.darkgrey,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '성분 기능 : ' + features.join(', '),
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
                    bookMark ? IconButton(
                      onPressed: func,
                      icon: Icon(
                        Icons.bookmark,
                        color: PColors.bookMark,
                        size: 30,
                      ),
                    ) : IconButton(
                      onPressed: func,
                      icon: Icon(
                        Icons.bookmark_border,
                        color: PColors.bookMark,
                        size: 30,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
