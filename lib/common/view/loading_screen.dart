import 'package:flutter/material.dart';
import 'package:gproject/common/variable/color/color.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              strokeWidth: 6,
              color: PColors.mainColor,
            ),
            SizedBox(height: 10,),
            Text('로딩중입니다.'),
          ],
        ),
      ),
    );
  }
}