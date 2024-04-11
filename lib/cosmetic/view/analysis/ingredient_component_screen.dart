import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/cosmetic/component/ingredient/ingredient_info.dart';

class IngredientComponentScreen extends StatelessWidget {
  const IngredientComponentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20,),
          margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 20,),
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 5 * 1,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: PColors.grey3.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 2,
                offset: Offset(3, 3),
              ),
            ],
          ),
          child: Column(
            children: [
              IngredientInfo(),
              Stack(
                children: [],
              )
            ],
          ),
        ),
      ],
    );
  }
}