import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/user/provider/login_provider.dart';

class IngredientMiniBar extends ConsumerWidget {
  final int grade;
  final String name;
  final double fontSize;
  final bool preference;
  final VoidCallback func;
  bool isPreference;
  IngredientMiniBar({
    required this.grade,
    required this.name,
    required this.fontSize,
    required this.preference,
    required this.func,
    this.isPreference = true,
    super.key,});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool loginState = ref.watch(loginStateProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: (grade == 1 || grade == 2) ? PColors.safe : (grade == 3 || grade == 4 || grade == 5 || grade == 6) ? PColors.halfDanger : PColors.danger,
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
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        (loginState && isPreference) ? GestureDetector(
          onTap: func,
          child: preference ? Stack(
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
          ) : Stack(
            alignment: Alignment.center,
            children: [
              Icon(Icons.bookmark,
                  size: 37, color: Color(0xFF636363).withOpacity(0.8)),
              Icon(
                Icons.bookmark,
                size: 30,
                color: Colors.white,
              )
            ],
          ),
        ) : SizedBox()
      ],
    );
  }
}