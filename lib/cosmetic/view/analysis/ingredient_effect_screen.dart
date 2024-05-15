import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/cosmetic/component/ingredient/ingredient_mini_bar.dart';
import 'package:gproject/cosmetic/model/analysis/analysis_model.dart';
import 'package:gproject/cosmetic/model/analysis/effect_model.dart';
import 'package:gproject/cosmetic/model/ingredient/ingredient_model.dart';
import 'package:gproject/cosmetic/provider/anlysis/analysis_provider.dart';
import 'package:gproject/cosmetic/provider/ingredient/ingredient_provider.dart';
import 'package:gproject/main.dart';

class IngredientEffectScreen extends ConsumerWidget {
  final AnalysisModel? compareData;
  final int index;
  final List<IngredientModel>? list;
  final Text? text;
  const IngredientEffectScreen({
    this.list,
    this.compareData,
    this.index = 0,
    this.text = null,
    super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ingreList = list == null ? ref.watch(IngredientProvider) : list;
    final effectList = ref.read(AnalysisProvider.notifier).effectList(compareData, index);
    return CustomScrollView(
      slivers: [
        //맨위 상단 효과 텍스트
        IngredientEffectText(data: effectList, text: text == null ? null : text),
        //그래프
        SliverToBoxAdapter(
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
            ),
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border(
              bottom: BorderSide(
                color: Colors.black,
              ),
            )),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  ...List.generate(effectList.length, (index) {
                    return CustomStickGraph(
                        num: effectList[index].num,
                        title: effectList[index].text);
                  }),
                ],
              ),
            ),
          ),
        ),
        //효과별 성분 리스트
        SliverPadding(
          padding: const EdgeInsets.only(left: 40, right: 40, top: 20),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 7),
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: ingreList!.length,
                  itemBuilder: (context, idx) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (idx == 0)
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                    children: [
                                      TextSpan(text: effectList[index].text),
                                      TextSpan(
                                        text: ' ${effectList[index].num}개',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: PColors.safe,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                        if(ingreList[idx].purpose.contains(effectList[index].text) || ingreList[idx].features.contains(effectList[index].text))
                        IngredientMiniBar(
                          name: ingreList[idx].name,
                          grade: ingreList[idx].grade,
                          fontSize: 16,
                          func: () {
                            if(list == null){
                              ref.read(IngredientProvider.notifier).changeBookmark(name : ingreList[idx].name, ref: ref);  
                            }else{
                              ref.read(compareIngredientProvider.notifier).changeBookmark(name : ingreList[idx].name, ref: ref);
                            }
                          },
                          preference: ingreList[idx].preference,
                        ),
                        if(ingreList[idx].purpose.contains(effectList[index].text) || ingreList[idx].features.contains(effectList[index].text))
                        Divider(
                          thickness: 1,
                        ),
                      ],
                    );
                  },
                ),
              ),
              childCount: effectList.length,
            ),
          ),
        ),
      ],
    );
  }

  SliverToBoxAdapter IngredientEffectText({
    required List<EffectModel> data,
    Text? text = null,
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
            text == null ? SizedBox() : SizedBox(height: 20,),
            text == null ? SizedBox() : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  text,
                ],
              ),
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
                  ...List.generate(data.length > 3 ? 3 : data.length, (index) {
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
            height: ratio.height * 10 * num ,
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
