import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

//모든 작업은 비동기
final secureStorageProvider = Provider<FlutterSecureStorage>((ref) => FlutterSecureStorage());

// Storage로부터 UserModel 얻는 코드
// final storage = ref.watch(secureStorageProvider);
// String? userDataNullable = await storage.read(key: 'user');

// String userData = userDataNullable ?? ""; // 널이면 빈 문자열로 설정

// Map<String, dynamic> userDataMap = jsonDecode(userData);
// UserModel user = UserModel.fromJson(userDataMap);