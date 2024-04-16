import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

//모든 작업은 비동기
final secureStorageProvider = Provider<FlutterSecureStorage>((ref) => FlutterSecureStorage());

// class SecureStorageNotifer extends StateNotifier<FlutterSecureStorage>{
//   SecureStorageNotifer():super(
//     FlutterSecureStorage()
//   );

//   // 데이터 쓰기
//   Future<void> writeData(String key, String value) async {
//     await state.write(key: key, value: value);
//   }

//   // 데이터 전부 삭제
//   Future<void> deleteData(String key) async {
//     await state.deleteAll();
//   }
  
//   // 로그인 여부
//   Future<bool> isLogined() async {
//     final data = await state.read(key: 'user');
//     if(data != null){
//       return true;
//     }else{
//       return false;
//     }
//   }
// }

// Storage로부터 UserModel 얻는 코드
// final storage = ref.watch(secureStorageProvider);
// String? userDataNullable = await storage.read(key: 'user');

// String userData = userDataNullable ?? ""; // 널이면 빈 문자열로 설정

// Map<String, dynamic> userDataMap = jsonDecode(userData);
// UserModel user = UserModel.fromJson(userDataMap);