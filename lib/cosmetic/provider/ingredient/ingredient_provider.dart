import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/cosmetic/model/ingredient/ingredient_model.dart';

final IngredientProvider = StateNotifierProvider<IngredientNotifier, List<IngredientModel>>((ref) => IngredientNotifier());

class IngredientNotifier extends StateNotifier<List<IngredientModel>> {
  IngredientNotifier()
      : super([
          IngredientModel(1, '증류수, 물', 1, true, '피부 보습', '미백 효과'),
          IngredientModel(2, '증류수, 물', 1, true, '피부 보습', '미백 효과'),
          IngredientModel(3, '증류수, 물', 1, false, '피부 보습', '미백 효과'),
          IngredientModel(4, '증류수, 물', 1, true, '피부 보습', '미백 효과'),
          IngredientModel(5, '증류수, 물', 1, false, '피부 보습', '미백 효과'),
          IngredientModel(6, '증류수, 물', 2, false, '피부 보습', '미백 효과'),
          IngredientModel(7, '증류수, 물', 2, false, '피부 보습', '미백 효과'),
          IngredientModel(8, '증류수, 물', 3, true, '피부 보습', '미백 효과'),
          IngredientModel(9, '증류수, 물', 3, true, '피부 보습', '미백 효과'),
          IngredientModel(10, '증류수, 물', 4, false, '피부 보습', '미백 효과'),
          IngredientModel(11, '증류수, 물', 5, true, '피부 보습', '미백 효과'),
          IngredientModel(12, '증류수, 물', 6, false, '피부 보습', '미백 효과'),
          IngredientModel(13, '증류수, 물', 6, false, '피부 보습', '미백 효과'),
          IngredientModel(14, '증류수, 물', 7, false, '피부 보습', '미백 효과'),
        ]);

  List<IngredientModel> fetchSafeData() {
    List<IngredientModel> Data = [];

    for (int i = 0; i < state.length; i++) {
      if (state[i].grade == 1 || state[i].grade == 2) {
        Data.add(state[i]);
      }
    }
    return Data;
  }

  List<IngredientModel> fetchHalfDangerData() {
    List<IngredientModel> Data = [];

    for (int i = 0; i < state.length; i++) {
      if (state[i].grade == 3 || state[i].grade == 4 || state[i].grade == 5) {
        Data.add(state[i]);
      }
    }
    return Data;
  }

  List<IngredientModel> fetchDangerData() {
    List<IngredientModel> Data = [];

    for (int i = 0; i < state.length; i++) {
      if (state[i].grade == 6 || state[i].grade == 7) {
        Data.add(state[i]);
      }
    }
    return Data;
  }

  void changeBookmark(int id){
    for(int i = 0; i<state.length; i++){
      if(state[i].ingredients_id == id){
        state[i] = state[i].copyWith(bookmark: !state[i].bookmark);
      }
    }
  }
}
