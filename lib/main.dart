import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/dio/dio.dart';
import 'package:gproject/common/view/splash_screen.dart';

late Size ratio;

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {

  @override
  void initState() async {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    getUserNum(1);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    getUserNum(0);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      // 앱이 포그라운드로 돌아올 때
      getUserNum(1);
    } else if (state == AppLifecycleState.paused) {
      // 앱이 백그라운드로 전환될 때
      getUserNum(0);
    }
  }

  Future<void> getUserNum(int num) async {
    // 1이 들어오는거
    // 0 이 나가는거
    try{
      final resp = await dio.post('${BASE_URL}/api/admin/userCount/${num}');
      if(resp.statusCode == 200){
        if(num == 1){
          print('유저 한명 추가!');
        }
        if(num == 0){
          print('유저 한명 삭제!');
        }
      }
    }catch(e){
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    ratio = Size(MediaQuery.sizeOf(context).width / 412, MediaQuery.sizeOf(context).height / 892);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Pretendard"),
      home: SplashScreen(),
    );
  }
}

void main() {
  runApp(
    ProviderScope(
      child: const MyApp(),
    ),
  );
}
