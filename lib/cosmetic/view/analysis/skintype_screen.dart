import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/cosmetic/model/ingredient/ingredient_model.dart';
import 'package:gproject/cosmetic/provider/anlysis/analysis_provider.dart';
import 'package:gproject/main.dart';

class SkinTypeScreen extends ConsumerWidget {
  const SkinTypeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.read(AnalysisProvider.notifier).skinEffectList();
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    ...List.generate(
                        data.length,
                        (index) => CustomStickGraph(
                            goodNum: data[index].num,
                            badNum: data[index].badnum ?? 0,
                            title: data[index].text))
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  bottom: 15,
                ),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: ref.read(AnalysisProvider.notifier).skinTypeVal(ref),
                        style: TextStyle(
                          fontSize: 16,
                          color: PColors.subColor3,
                        ),
                      ),
                      TextSpan(text: '에게 효과가 있습니다.'),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 1,
              ),
            ],
          ),
        ),
        SliverBox(skinType: '건성 피부', ingredient: ref.read(AnalysisProvider.notifier).skinTypeData('DRY')),
        SliverBox(skinType: '지성 피부', ingredient: ref.read(AnalysisProvider.notifier).skinTypeData('OILY')),
        SliverBox(skinType: '민감성 피부', ingredient: ref.read(AnalysisProvider.notifier).skinTypeData('SENSITIVE')),
      ],
    );
  }

  Padding CustomStickGraph({
    required int goodNum,
    required int badNum,
    required String title,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                children: [
                  Text(
                    '${goodNum}개',
                    style: TextStyle(
                      fontSize: 14,
                      color: PColors.mainColor,
                    ),
                  ),
                  Icon(
                    Icons.sentiment_very_satisfied,
                    size: 40,
                    color: PColors.mainColor,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: ratio.height * 12 * goodNum,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: PColors.mainColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(
                    '${badNum}개',
                    style: TextStyle(
                      fontSize: 14,
                      color: PColors.bad,
                    ),
                  ),
                  Icon(
                    Icons.sentiment_very_dissatisfied,
                    size: 40,
                    color: PColors.bad,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: ratio.height * 12 * badNum,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: PColors.bad,
                    ),
                  ),
                ],
              ),
            ],
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
