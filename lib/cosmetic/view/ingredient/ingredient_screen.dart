import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/common/view/default_layout.dart';
import 'package:gproject/cosmetic/component/ingredient/ingredient_bar.dart';
import 'package:gproject/cosmetic/component/ingredient/ingredient_info.dart';
import 'package:gproject/cosmetic/provider/ingredient/ingredient_button_provider.dart';

class IngredientScreen extends ConsumerWidget {
  IngredientScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<bool> state = ref.watch(buttonIndexProvider);
    List<Widget> barList = [
      IngredientBar(
          level: 1, ingredientName: '증류수', purpose: '수분 보충', function: '미백'),
      IngredientBar(
          level: 1, ingredientName: '증류수', purpose: '수분 보충', function: '미백'),
      IngredientBar(
          level: 3, ingredientName: '증류수', purpose: '수분 보충', function: '미백'),
      IngredientBar(
          level: 5, ingredientName: '증류수', purpose: '수분 보충', function: '미백'),
      IngredientBar(
          level: 6, ingredientName: '증류수', purpose: '수분 보충', function: '미백'),
      IngredientBar(
          level: 7, ingredientName: '증류수', purpose: '수분 보충', function: '미백'),
      IngredientBar(
          level: 5, ingredientName: '증류수', purpose: '수분 보충', function: '미백'),
      IngredientBar(
          level: 2, ingredientName: '증류수', purpose: '수분 보충', function: '미백'),
      IngredientBar(
          level: 7, ingredientName: '증류수', purpose: '수분 보충', function: '미백'),
    ];
    List<Widget> levelButton = [
      IngredientButton(
        title: '전체',
        func: () {
          ref.read(buttonIndexProvider.notifier).changeValue(0);
        },
        selected: state[0],
      ),
      IngredientButton(
        title: '1~2 등급',
        func: () {
          ref.read(buttonIndexProvider.notifier).changeValue(1);
        },
        selected: state[1],
      ),
      IngredientButton(
        title: '3~5 등급',
        func: () {
          ref.read(buttonIndexProvider.notifier).changeValue(2);
        },
        selected: state[2],
      ),
      IngredientButton(
        title: '6~7 등급',
        func: () {
          ref.read(buttonIndexProvider.notifier).changeValue(3);
        },
        selected: state[3],
      ),
    ];
    return DefaultLayout(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                IngredientInfo(),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: levelButton)
              ],
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
            sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
              (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: barList[index],
              ),
              childCount: barList.length,
            )),
          ),
        ],
      ),
    );
  }

  Padding IngredientButton({
    required String title,
    required VoidCallback func,
    bool selected = false,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: func,
        style: ElevatedButton.styleFrom(
            minimumSize: Size(50, 30),
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            surfaceTintColor: selected ? PColors.mainColor : Colors.transparent,
            shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  color: selected
                      ? PColors.mainColor
                      : PColors.grey3.withOpacity(0.3),
                ),
                borderRadius: BorderRadius.circular(20))),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: selected ? PColors.mainColor : PColors.grey3,
          ),
        ),
      ),
    );
  }
}
