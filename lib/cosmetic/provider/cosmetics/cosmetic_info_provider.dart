import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/dio/dio.dart';
import 'package:gproject/cosmetic/model/cosmetics/cosmetic_model.dart';

final CosmeticInfoProvider = StateNotifierProvider<CosmeticInfoNotifier, CosmeticModel>((ref) => CosmeticInfoNotifier());

class CosmeticInfoNotifier extends StateNotifier<CosmeticModel> {
  CosmeticInfoNotifier() : super(CosmeticModel(0, 'name', 'imagePath', 0, []));

  Future getDetail(int id) async {
    CosmeticModel data = CosmeticModel(0, 'name', 'imagePath', 0, []);
    try{
      final resp = await dio.get('${BASE_URL}/api/user/cosmetic_detail/${id}');
      if(resp.statusCode == 200){
        print('성공');
        print(resp.data);
        data = CosmeticModel.fromJson(resp.data);
        print(state);
      }
    }catch(e){
      print(e);
    }
    state = data;
  }
}
