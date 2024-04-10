import 'package:flutter/cupertino.dart';
import 'package:gproject/common/variable/color/color.dart';

class IngredientInfo extends StatelessWidget {
  
  const IngredientInfo({super.key});

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
    required Color color,
  }){
    return Row(
      children: [
        Container(
          height: 12,
          width: 12,
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
            fontSize: 12,
          ),
        )
      ],
    );
  }
}
