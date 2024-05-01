import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/common/view/default_layout.dart';
import 'package:gproject/cosmetic/view/analysis/ai_analysis_screen.dart';
import 'package:gproject/cosmetic/view/analysis/compare/compare_ai_analysis_screen.dart';
import 'package:gproject/cosmetic/view/analysis/compare/compare_ingredient_component_screen.dart';
import 'package:gproject/cosmetic/view/analysis/compare/compare_ingredient_effect_screen.dart';
import 'package:gproject/cosmetic/view/analysis/compare/compare_skintype_screen.dart';
import 'package:gproject/cosmetic/view/analysis/evaluation_screen.dart';
import 'package:gproject/cosmetic/view/analysis/ingredient_component_screen.dart';
import 'package:gproject/cosmetic/view/analysis/ingredient_effect_screen.dart';
import 'package:gproject/cosmetic/view/analysis/skintype_screen.dart';

class AnalysisScreen extends StatefulWidget {
  final bool isCompare;
  const AnalysisScreen({
    required this.isCompare,
    super.key});

  @override
  State<AnalysisScreen> createState() => _AnalysisScreenState();
}

class _AnalysisScreenState extends State<AnalysisScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController = TabController(
    length: 4,
    vsync: this,
    initialIndex: 0,
    animationDuration: const Duration(
      milliseconds: 500,
    ),
  );

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      func: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EvaluationScreen();
            },
          ),
        );
      },
      child: Column(
        children: [
          TabBar(
            indicatorColor: PColors.mainColor,
            indicatorWeight: 2,
            indicatorSize: TabBarIndicatorSize.tab,
            overlayColor: MaterialStatePropertyAll(
              PColors.mainColor.withOpacity(0.5),
            ),
            splashBorderRadius: BorderRadius.circular(20),
            controller: tabController,
            unselectedLabelColor: PColors.grey3,
            labelColor: Colors.black,
            tabs: [
              Tab(
                text: '분석',
              ),
              Tab(
                text: '성분 구성',
              ),
              Tab(
                text: '효과별',
              ),
              Tab(
                text: '피부 타입별',
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              physics: NeverScrollableScrollPhysics(),
              children: [
                widget.isCompare ? CompareAIAnalysisScreen() : AIAnalysisScreen(),
                widget.isCompare ? CompareIngredientComponentScreen() : IngredientComponentScreen(),
                widget.isCompare ? CompareIngredientEffectScreen() : IngredientEffectScreen(),
                widget.isCompare ? CompareSkinTypeScreen() : SkinTypeScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
