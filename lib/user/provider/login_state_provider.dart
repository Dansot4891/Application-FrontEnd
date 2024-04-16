import 'package:flutter_riverpod/flutter_riverpod.dart';

final loginStateProvider = StateNotifierProvider<LoginStateNotifier, bool>((ref) {
  return LoginStateNotifier();
});

class LoginStateNotifier extends StateNotifier<bool> {
  LoginStateNotifier() : super(false); // 초기 값으로 false 설정

  void setLoggedIn(bool value) {
    state = value;
  }
}

// final storage = ref.watch(secureStorageProvider);
//   final isLogined = await storage.read(key: 'user');
//   if(isLogined == null){
//     return false;
//   }else{
//     return true;
//   }