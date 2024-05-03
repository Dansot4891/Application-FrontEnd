import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/cosmetic/model/cosmetics/recommend_cosmetic_model.dart';

final RecommendCosmeticProvider = StateNotifierProvider<RecommendCosmeticNotifier, RecommendCosmeticModel>((ref) => RecommendCosmeticNotifier());

class RecommendCosmeticNotifier extends StateNotifier<RecommendCosmeticModel>{
  RecommendCosmeticNotifier():super(
    RecommendCosmeticModel(name: 'name', compatibilityScore: 1, skintype: '', skinTypeDescriptions: [], keyIngredient: [], image: 'image')
  );

  void setData(RecommendCosmeticModel data){
    state = data;
  }
}