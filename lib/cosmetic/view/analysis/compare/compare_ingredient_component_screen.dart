import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/cosmetic/component/ingredient/ingredient_info.dart';
import 'package:gproject/cosmetic/provider/anlysis/compare_analysis_provider.dart';
import 'package:gproject/cosmetic/provider/ingredient/ingredient_provider.dart';
import 'package:gproject/cosmetic/view/analysis/ingredient_component_screen.dart';
import 'package:gproject/main.dart';

class CompareIngredientComponentScreen extends ConsumerWidget {
  const CompareIngredientComponentScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(compareAnalysisProvider);
    final iData = ref.watch(compareIngredientProvider);
    return Swiper(
              itemCount: 2,
              viewportFraction: 1,
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
                return IngredientComponentScreen(compareData: data.analysisList[index], list: index == 0 ? null : iData,);
              },
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
