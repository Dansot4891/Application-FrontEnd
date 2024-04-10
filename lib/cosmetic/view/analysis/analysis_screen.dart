import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gproject/common/variable/color/color.dart';
import 'package:gproject/common/view/default_layout.dart';

class AnalysisScreen extends StatefulWidget {
  const AnalysisScreen({super.key});

  @override
  State<AnalysisScreen> createState() => _AnalysisScreenState();
}

class _AnalysisScreenState extends State<AnalysisScreen> with SingleTickerProviderStateMixin{
  late TabController tabController = TabController(length: 4, vsync: this, initialIndex: 0, animationDuration: const Duration(milliseconds: 500,),);

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      child: TabBar(
        controller: tabController,
        unselectedLabelColor: PColors.grey3,
        labelColor: Colors.black,
        tabs: [
          Tab(text: '분석',),
          Tab(text: '성분 구성',),
          Tab(text: '효과별',),
          Tab(text: '피부 타입별',),
        ],
      )
    );
  }
}
