import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/cosmetic/model/analysis/analysis_model.dart';
import 'package:gproject/cosmetic/model/ingredient/ingredient_model.dart';
import 'package:gproject/cosmetic/provider/anlysis/analysis_provider.dart';
import 'package:gproject/cosmetic/view/analysis/skintype_screen.dart';
import 'package:gproject/main.dart';

class CompareSkinTypeScreen extends ConsumerWidget {
  final int index;
  final AnalysisModel? aData;
  const CompareSkinTypeScreen({
    this.index = 0,
    this.aData = null,
    super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Swiper(
              itemCount: 2,
              scrollDirection: Axis.horizontal,
              pagination: SwiperPagination(
                alignment: Alignment.topCenter,
                builder: DotSwiperPaginationBuilder(
                  activeColor: PColors.mainColor,
                  color: PColors.grey3.withOpacity(0.5),
                  size: 12,
                  activeSize: 14,
                  space: 8,
                ),
              ),
              loop: false,
              itemBuilder: (context, index) {
                return SkinTypeScreen(index: index, compareData: ref.watch(AnalysisProvider)[index], text: Text('${index+1}번 이미지', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),);
              },
            );
  }

  Padding SkinTypeRow(
    String name,
    String func,
    bool isgood,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Icon(
              isgood
                  ? Icons.sentiment_very_satisfied
                  : Icons.sentiment_very_dissatisfied,
              size: 40,
              color: isgood ? PColors.mainColor : PColors.bad),
          SizedBox(
            width: ratio.width * 10,
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(
            width: ratio.width * 15,
          ),
          Text(
            '|',
            style: TextStyle(
              fontSize: 16,
              color: PColors.grey3.withOpacity(0.5),
            ),
          ),
          SizedBox(
            width: ratio.width * 15,
          ),
          Text(
            func,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          SizedBox(
            width: ratio.width * 15,
          ),
        ],
      ),
    );
  }

  SliverPadding SliverBox({
    required String skinType,
    required List<IngredientModel> ingredient,
  }) {
    return SliverPadding(
      padding: const EdgeInsets.only(left: 30, top: 30),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            if (index == 0)
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    skinType,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: ratio.height * 15,
                  ),
                ],
              );
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ingredient[index].skin_type != null ? ListView.builder(
                      itemCount: ingredient[index].skin_type!.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, idx) {
                        return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: ingredient[index].skin_type![idx].positivity_status ?
                          SkinTypeRow(ingredient[index].name,'${ingredient[index].skin_type![idx].skinDescription}',ingredient[index].skin_type![idx].positivity_status) : null
                        );
                      },
                    ) : SizedBox(height: 50,),
            );
          },
          childCount: ingredient.length,
        ),
      ),
    );
  }
}
