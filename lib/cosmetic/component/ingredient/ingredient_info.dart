import 'package:flutter/cupertino.dart';
import 'package:gproject/common/variable/color.dart';

class IngredientInfo extends StatelessWidget {
  final int? safeRating;
  final int? halfSafeRating;
  final int? dangerRating;
  const IngredientInfo({
    this.safeRating = null,
    this.halfSafeRating = null,
    this.dangerRating = null,
    super.key,});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IngredientMiniBar(text: '1~2 등급', color: PColors.safe,),
        IngredientMiniBar(text: '3~5 등급', color: PColors.halfDanger,),
        IngredientMiniBar(text: '6~7 등급', color: PColors.danger,),
      ],
    );
  }

  Widget IngredientMiniBar({
    required String text,
    String? rating,
    required Color color,
  }){
    return Row(
      children: [
        Container(
          height: 14,
          width: 14,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        rating == null ? Text(
          '',
          style: TextStyle(
            fontSize: 14,
          ),
        ) : Text(
          ' (${rating!})',
          style: TextStyle(
            fontSize: 14,
          ),
        )
      ],
    );
  }
}
