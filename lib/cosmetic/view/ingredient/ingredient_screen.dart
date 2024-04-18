import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/component/dialog.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/common/view/default_layout.dart';
import 'package:gproject/cosmetic/component/ingredient/ingredient_bar.dart';
import 'package:gproject/cosmetic/component/ingredient/ingredient_info.dart';
import 'package:gproject/cosmetic/model/ingredient/ingredient_model.dart';
import 'package:gproject/cosmetic/provider/ingredient/ingredient_button_provider.dart';
import 'package:gproject/cosmetic/provider/ingredient/ingredient_provider.dart';
import 'package:gproject/user/provider/login_provider.dart';

class IngredientScreen extends ConsumerWidget {
  IngredientScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<bool> state = ref.watch(buttonIndexProvider);
    List<IngredientModel> list = ref.watch(IngredientFilterProvider);
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
        title: '3~6 등급',
        func: () {
          ref.read(buttonIndexProvider.notifier).changeValue(2);
        },
        selected: state[2],
      ),
      IngredientButton(
        title: '7~10 등급',
        func: () {
          ref.read(buttonIndexProvider.notifier).changeValue(3);
        },
        selected: state[3],
      ),
    ];
    return DefaultLayout(
      func: () async {
        // if(ref.watch(loginStateProvider)){
        //   final result = ref.read(IngredientProvider.notifier).getBookMarkData(ref.watch(previousDataProvider), ref.watch(userDataProvider)!.id!);
        //   if(result == false){
        //     CustomDialog(context: context, title: '오류가 발생했습니다.', buttonText: '확인', buttonCount: 1, func: (){Navigator.pop(context);});
        //   }
        // }
        Navigator.pop(context);
      },
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
                child: IngredientBar(level: list[index].grade, ingredientName: list[index].name, purpose: list[index].purpose, features: list[index].features, bookMark: list[index].preference, func: (){
                  ref.read(IngredientProvider.notifier).changeBookmark(list[index].name);
                },),
              ),
              childCount: list.length,
            ),),
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
