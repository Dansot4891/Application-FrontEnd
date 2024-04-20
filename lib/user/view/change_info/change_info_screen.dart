import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/common/view/default_layout.dart';
import 'package:gproject/user/view/change_info/change_password_screen.dart';
import 'package:gproject/user/view/change_info/change_personal_info_screen.dart';

class ChangeInfoScreen extends StatefulWidget {
  const ChangeInfoScreen({super.key});

  @override
  State<ChangeInfoScreen> createState() => _ChangeInfoScreenState();
}

class _ChangeInfoScreenState extends State<ChangeInfoScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController = TabController(
    length: 2,
    vsync: this,
    initialIndex: 0,
    animationDuration: const Duration(
      microseconds: 1000,
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
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverToBoxAdapter(
              child: TabBar(
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
                    text: '개인정보 변경',
                  ),
                  Tab(
                    text: '비밀번호 변경',
                  ),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          controller: tabController,
          physics: NeverScrollableScrollPhysics(),
          children: [
            ChangePersonalInfoScreen(),
            ChangePasswordScreen(),
          ],
        ),
      ),
    );
  }
}
