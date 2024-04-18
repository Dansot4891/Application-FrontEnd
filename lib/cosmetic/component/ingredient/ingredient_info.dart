import 'package:flutter/cupertino.dart';
import 'package:gproject/common/variable/color.dart';

class IngredientInfo extends StatelessWidget {
  final int? safeRating;
  final int? halfSafeRating;
  final int? dangerRating;
  final bool type;
  const IngredientInfo({
    this.type = false,
    this.safeRating = null,
    this.halfSafeRating = null,
    this.dangerRating = null,
    super.key,});

  @override
  Widget build(BuildContext context) {
    return type ? Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IngredientMiniBar(text: '안전', color: PColors.safe, rating: safeRating),
        IngredientMiniBar(text: '약간 위험', color: PColors.halfDanger, rating: halfSafeRating),
        IngredientMiniBar(text: '위험', color: PColors.danger, rating: dangerRating),
      ],
    ) : Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IngredientMiniBar(text: '1~2 등급', color: PColors.safe, rating: safeRating),
        IngredientMiniBar(text: '3~6 등급', color: PColors.halfDanger, rating: halfSafeRating),
        IngredientMiniBar(text: '7~10 등급', color: PColors.danger, rating: dangerRating),
      ],
    );
  }

  Widget IngredientMiniBar({
    required String text,
    int? rating,
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
          '(${rating}%)',
          style: TextStyle(
            fontSize: 14,
          ),
        )
      ],
    );
  }
}
