import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/cosmetic/model/ingredient/ingredient_model.dart';

class IngredientNotifier extends StateNotifier<List<IngredientModel>>{
  IngredientNotifier():super(
    [
      IngredientModel(1, '증류수, 물', 1, true, '피부 보습', '미백 효과'),
      IngredientModel(2, '증류수, 물', 1, true, '피부 보습', '미백 효과'),
      IngredientModel(3, '증류수, 물', 1, true, '피부 보습', '미백 효과'),
      IngredientModel(4, '증류수, 물', 1, true, '피부 보습', '미백 효과'),
      IngredientModel(5, '증류수, 물', 1, true, '피부 보습', '미백 효과'),
      IngredientModel(6, '증류수, 물', 1, true, '피부 보습', '미백 효과'),
      IngredientModel(7, '증류수, 물', 1, true, '피부 보습', '미백 효과'),
    ]
  );
}