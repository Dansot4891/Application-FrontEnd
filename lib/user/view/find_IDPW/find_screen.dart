import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gproject/common/component/main_text.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/main.dart';
import 'package:gproject/user/view/find_IDPW/find_id_screen.dart';
import 'package:gproject/user/view/find_IDPW/find_pw_screen.dart';

class FindScreen extends StatefulWidget {
  const FindScreen({super.key});

  @override
  State<FindScreen> createState() => _FindScreenState();
}

class _FindScreenState extends State<FindScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController = TabController(
    length: 2,
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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: ratio.height * 30),
            MainText(),
            SizedBox(
              height: ratio.height * 60,
            ),
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
                  text: '아이디 찾기',
                ),
                Tab(
                  text: '비밀번호 찾기',
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  FindIDScreen(),
                  FindPWScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
