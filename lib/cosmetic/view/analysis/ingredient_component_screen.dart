import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/cosmetic/component/ingredient/ingredient_bar.dart';
import 'package:gproject/cosmetic/component/ingredient/ingredient_info.dart';
import 'package:gproject/cosmetic/model/analysis/analysis_model.dart';
import 'package:gproject/cosmetic/model/ingredient/ingredient_model.dart';
import 'package:gproject/cosmetic/provider/anlysis/analysis_provider.dart';
import 'package:gproject/cosmetic/provider/ingredient/ingredient_provider.dart';
import 'package:gproject/main.dart';

class IngredientComponentScreen extends ConsumerWidget {
  final AnalysisModel? compareData;
  final List<IngredientModel>? list;
  final int index;
  const IngredientComponentScreen({
    this.compareData,
    this.list,
    this.index = 0,
    super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AnalysisModel data = compareData == null ? ref.watch(AnalysisProvider)[0] : compareData!;
    final lists = list == null ? ref.watch(IngredientProvider) : list;
    final percentList = ref.read(AnalysisProvider.notifier).percentList(index);
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          sliver: SliverToBoxAdapter(
            child: Column(
              children: [
                IngredientBox(context: context, aDanger: data.allArg_danger, mDanger: data.danger, safeRating: (percentList[0].toDouble()/lists!.length.toDouble() * 100).toInt(), halfSafeRating: (percentList[1].toDouble()/lists.length.toDouble() * 100).toInt(), dangerRating: (percentList[2].toDouble()/lists.length.toDouble() * 100).toInt()),
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
                      '성분 ${lists.length}개',
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
                child: IngredientBar(level: lists[index].grade, ingredientName: lists[index].name, purpose: lists[index].purpose, features: lists[index].features, bookMark: lists[index].preference, func: (){
                  if(list == null){
                    ref.read(IngredientProvider.notifier).changeBookmark(lists[index].name);
                    print(lists[index].preference);
                  }else{
                    print(lists[index].preference);
                    ref.read(compareIngredientProvider.notifier).changeBookmark(lists[index].name);
                  }
                }),
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
    required int aDanger,
    required int mDanger,
    required int safeRating,
    required int halfSafeRating,
    required int dangerRating,
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
            safeRating: safeRating,
            halfSafeRating: halfSafeRating,
            dangerRating: dangerRating,
          ),
          SizedBox(
            height: ratio.height * 10,
          ),
          CustomGraph(
            context: context,
            safeRating: safeRating,
            halfSafeRating: halfSafeRating,
            dangerRating: dangerRating,
          ),
          SizedBox(
            height: ratio.height * 10,
          ),
          DangerRow(title: '알레르기 위험성분', num: aDanger),
          SizedBox(
            height: ratio.height * 15,
          ),
          DangerRow(title: '의약처 위험성분', num: mDanger),
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
          height: ratio.height * 20,
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
          height: ratio.height * 20,
          decoration: BoxDecoration(
            color: PColors.halfDanger,
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          width: (MediaQuery.of(context).size.width - 60) / 100 * safeRating,
          height: ratio.height * 20,
          decoration: BoxDecoration(
            color: PColors.safe,
            borderRadius: BorderRadius.circular(24),
          ),
        ),
      ],
    );
  }
}
