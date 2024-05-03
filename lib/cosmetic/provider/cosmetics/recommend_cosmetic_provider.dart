import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/dio/dio.dart';
import 'package:gproject/cosmetic/model/cosmetics/recommend_cosmetic_model.dart';

final RecommendCosmeticProvider = StateNotifierProvider<RecommendCosmeticNotifier, RecommendCosmeticModel>((ref) => RecommendCosmeticNotifier());

class RecommendCosmeticNotifier extends StateNotifier<RecommendCosmeticModel>{
  RecommendCosmeticNotifier():super(
    RecommendCosmeticModel(id: 0, name: 'name', compatibilityScore: 1, skintype: '', skinTypeDescriptions: [], keyIngredient: [], image: 'image')
  );

  void setData(RecommendCosmeticModel data){
    state = data;
  }

  Future fetchData(int memberId) async {
    try{
      final resp = await dio.get('${BASE_URL}/api/user/ai/recommend/${memberId}');
      if(resp.statusCode == 200){
        final data = RecommendCosmeticModel.fromJson(resp.data);
        state = data;
        print('성공');
      }
    }catch(e){
      print(e);
    }
  }
}