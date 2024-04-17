import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/secure_storage/secure_storage.dart';
import 'package:gproject/user/model/user_model.dart';
import 'package:gproject/user/provider/signup_provider.dart';

final loginStateProvider = Provider<bool>((ref) {
  final userData = ref.watch(userDataProvider);

  if(userData == null){
    return false;
  }else{
    return true;
  }
});

// final loginStateProvider = StateNotifierProvider<LoginStateNotifier, bool>((ref) {
//   return LoginStateNotifier();
// });

// class LoginStateNotifier extends StateNotifier<bool> {
//   LoginStateNotifier() : super(false); // 초기 값으로 false 설정

//   void setLoggedIn(bool value) {
//     state = value;
//   }
// }

final userDataProvider = StateNotifierProvider<UserDataNotifer, UserModel?>((ref) => UserDataNotifer());

class UserDataNotifer extends StateNotifier<UserModel?>{
  UserDataNotifer():super(
    null
  );

  Future<void> updateUserModel(WidgetRef ref) async {
    final storage = ref.watch(secureStorageProvider);
    String? userDataNullable = await storage.read(key: 'user');
    String userData = userDataNullable ?? "";
    Map<String, dynamic> userDataMap = jsonDecode(userData);
    UserModel user = UserModel.fromJson(userDataMap);

    print(user);
    //개인정보 때를 위한 provider 데이터 변경
    if(user.gender == 'MALE'){
      ref.read(genderButtonProvider.notifier).changeValue(0);
    }else if(user.gender == 'FEMALE'){
      ref.read(genderButtonProvider.notifier).changeValue(1);
    }

    if(user.skin_type == 'DRY'){
      ref.read(typeButtonProvider.notifier).changeValue(0);
    }else if(user.skin_type == 'OILY'){
      ref.read(typeButtonProvider.notifier).changeValue(1);
    }else if(user.skin_type == 'SENSITIVE'){
      ref.read(typeButtonProvider.notifier).changeValue(2);
    }

    ref.read(worryButtonProvider.notifier).reset();
    if(user.skin_concerns.contains('해당없음') || user.skin_concerns.length == 0){
      state = user;
      return;
    }
    if(!user.skin_concerns.contains('해당없음')){
      ref.read(worryButtonProvider.notifier).changeValue(0);
    }
    if(user.skin_concerns.contains('아토피')){
      print(ref.read(worryButtonProvider));
      ref.read(worryButtonProvider.notifier).changeValue(1);
    }
    if(user.skin_concerns.contains('여드름')){
      ref.read(worryButtonProvider.notifier).changeValue(2);
    }
    if(user.skin_concerns.contains('각질')){
      ref.read(worryButtonProvider.notifier).changeValue(3);
    }
    if(user.skin_concerns.contains('미백잡티')){
      ref.read(worryButtonProvider.notifier).changeValue(4);
    }
    if(user.skin_concerns.contains('주름탄력')){
      ref.read(worryButtonProvider.notifier).changeValue(5);
    }
    state = user;
  }

  Future<void> deleteData() async {
    state = null;
  }
}

// final storage = ref.watch(secureStorageProvider);
//   final isLogined = await storage.read(key: 'user');
//   if(isLogined == null){
//     return false;
//   }else{
//     return true;
//   }