import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/view/splash_screen.dart';

late Size ratio;

void main() {
  runApp(
    ProviderScope(
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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



// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:gproject/common/view/splash_screen.dart';
// import 'package:web_socket_channel/web_socket_channel.dart';

// late Size ratio;

// class MyApp extends StatefulWidget {
//   MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   final channel = WebSocketChannel.connect(Uri.parse('ws://ceprj.gachon.ac.kr:60006/ws'));

//   @override
//   Widget build(BuildContext context) {
//     ratio = Size(MediaQuery.sizeOf(context).width / 412, MediaQuery.sizeOf(context).height / 892);
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(fontFamily: "Pretendard"),
//       home: StreamBuilder(
//         stream: channel.stream,
//         builder: (context, snapshot){
//           return SplashScreen();
//         },
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     channel.sink.close();
//   }
// }

// void main() {
//   runApp(
//     ProviderScope(
//       child: MyApp(),
//     ),
//   );
// }