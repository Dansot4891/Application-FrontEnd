import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/cosmetic/component/ingredient/ingredient_bar.dart';
import 'package:gproject/cosmetic/component/ingredient/ingredient_info.dart';
import 'package:gproject/main.dart';

class IngredientComponentScreen extends StatelessWidget {
  const IngredientComponentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> lists = [
      IngredientBar(
          level: 1, ingredientName: '정제수, 물', purpose: '피부 보습', function: '습윤', bookMark: true, func: (){},),
      IngredientBar(
          level: 1, ingredientName: '정제수, 물', purpose: '피부 보습', function: '습윤', bookMark: true, func: (){},),
      IngredientBar(
          level: 2, ingredientName: '정제수, 물', purpose: '피부 보습', function: '습윤', bookMark: true, func: (){},),
      IngredientBar(
          level: 2, ingredientName: '정제수, 물', purpose: '피부 보습', function: '습윤', bookMark: true, func: (){},),
      IngredientBar(
          level: 1, ingredientName: '정제수, 물', purpose: '피부 보습', function: '습윤', bookMark: true, func: (){},),
      IngredientBar(
          level: 4, ingredientName: '정제수, 물', purpose: '피부 보습', function: '습윤', bookMark: true, func: (){},),
      IngredientBar(
          level: 6, ingredientName: '정제수, 물', purpose: '피부 보습', function: '습윤', bookMark: true, func: (){},),
      IngredientBar(
          level: 7, ingredientName: '정제수, 물', purpose: '피부 보습', function: '습윤', bookMark: true, func: (){},),
    ];
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          sliver: SliverToBoxAdapter(
            child: Column(
              children: [
                IngredientBox(context: context),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Divider(
                    thickness: 2,
                    color: PColors.mainColor,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '성분 ${36}개',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    Expanded(child: IngredientInfo()),
                  ],
                ),
                SizedBox(height: ratio.height * 20,),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: lists[index],
              ),
              childCount: lists.length
            ),
          ),
        ),
      ],
    );
  }

  Container IngredientBox({
    required BuildContext context,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 20,
      ),
      margin: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      width: double.infinity,
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
          IngredientInfo(
            type: true,
            safeRating: 81,
            halfSafeRating: 11,
            dangerRating: 8,
          ),
          SizedBox(
            height: ratio.height * 10,
          ),
          CustomGraph(
            context: context,
            safeRating: 81,
            halfSafeRating: 11,
            dangerRating: 8,
          ),
          SizedBox(
            height: ratio.height * 10,
          ),
          DangerRow(title: '알레르기 위험성분', num: 2),
          SizedBox(
            height: ratio.height * 15,
          ),
          DangerRow(title: '의약처 위험성분', num: 1),
        ],
      ),
    );
  }

  Row DangerRow({
    required String title,
    required int num,
  }) {
    return Row(
      children: [
        Icon(
          Icons.warning_amber,
          size: 25,
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Text(
            title,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
        ),
        Text(
          '${num}개',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }

  Stack CustomGraph({
    required BuildContext context,
    required int safeRating,
    required int halfSafeRating,
    required int dangerRating,
  }) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          width: MediaQuery.of(context).size.width,
          height: ratio.height * 30,
          decoration: BoxDecoration(
            color: PColors.danger,
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          width: (MediaQuery.of(context).size.width - 60) /
              100 *
              (halfSafeRating + safeRating),
          height: ratio.height * 30,
          decoration: BoxDecoration(
            color: PColors.halfDanger,
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          width: (MediaQuery.of(context).size.width - 60) / 100 * safeRating,
          height: ratio.height * 30,
          decoration: BoxDecoration(
            color: PColors.safe,
            borderRadius: BorderRadius.circular(24),
          ),
        ),
      ],
    );
  }
}
