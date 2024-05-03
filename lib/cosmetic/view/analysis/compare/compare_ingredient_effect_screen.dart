import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/cosmetic/model/analysis/analysis_model.dart';
import 'package:gproject/cosmetic/model/analysis/effect_model.dart';
import 'package:gproject/cosmetic/provider/anlysis/analysis_provider.dart';
import 'package:gproject/cosmetic/provider/ingredient/ingredient_provider.dart';
import 'package:gproject/cosmetic/view/analysis/ingredient_effect_screen.dart';
import 'package:gproject/main.dart';

class CompareIngredientEffectScreen extends ConsumerWidget {
  final AnalysisModel? compareData;
  const CompareIngredientEffectScreen({
    this.compareData,
    super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final iData2 = ref.watch(compareIngredientProvider);
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
        print(ref.watch(AnalysisProvider)[index]);
        return IngredientEffectScreen(index: index, compareData: ref.watch(AnalysisProvider)[index], list: index == 0 ? null : iData2, text: Text('${index+1}번 이미지', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),);
      },
    );
  }

  SliverToBoxAdapter IngredientEffectText({
    required List<EffectModel> data,
  }) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '효과별 성분',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
                children: [
                  ...List.generate(data.length, (index) {
                    if (index == 0)
                      return TextSpan(
                        text: data[index].text,
                        style: TextStyle(
                          color: PColors.subColor3,
                          fontSize: 16,
                        ),
                      );
                    return TextSpan(
                      text: ", " + data[index].text,
                      style: TextStyle(
                        color: PColors.subColor3,
                        fontSize: 16,
                      ),
                    );
                  }),
                  TextSpan(text: ' 등의 효과가 있습니다.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding CustomStickGraph({
    required int num,
    required String title,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      child: Column(
        children: [
          Text(
            '${num}개',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            height: ratio.height * 20 * num,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: PColors.mainColor,
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
