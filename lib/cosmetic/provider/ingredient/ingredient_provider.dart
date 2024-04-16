import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/cosmetic/model/ingredient/ingredient_model.dart';
import 'package:gproject/cosmetic/provider/ingredient/ingredient_button_provider.dart';

final IngredientProvider =
    StateNotifierProvider<IngredientNotifier, List<IngredientModel>>(
        (ref) => IngredientNotifier());

final IngredientFilterProvider =
    Provider<List<IngredientModel>>(
        (ref) {
          final buttonIndex = ref.watch(buttonIndexProvider);
          final ingredientData = ref.watch(IngredientProvider);

          if(buttonIndex[0] == true){
            return ingredientData;
          }
          if(buttonIndex[1] == true){
            return ingredientData.where((e) => (e.grade == 1 || e.grade == 2)).toList();
          }
          if(buttonIndex[2] == true){
            return ingredientData.where((e) => (e.grade == 3 || e.grade == 4 || e.grade == 5)).toList();
          }
          if(buttonIndex[3] == true){
            return ingredientData.where((e) => (e.grade == 6 || e.grade == 7)).toList();
          }
          return [];
        },);


class IngredientNotifier extends StateNotifier<List<IngredientModel>> {
  IngredientNotifier()
      : super([

        ]);

  Future<void> fetchDate()async{
    state = [
                IngredientModel(1, '증류수, 물', 1, ['피부 보습', '피부 윤기','피부 윤기',], true, ['미백 효과', '미백 효과'],),
          IngredientModel(2, '증류수1', 2, ['피부 보습', '피부 윤기'], true, ['미백 효과', '미백 효과'],),
          IngredientModel(3, '증류수2', 2, ['피부 보습', '피부 윤기'], true, ['미백 효과', '미백 효과'],),
          IngredientModel(4, '증류수3', 2, ['피부 보습', '피부 윤기'], true, ['미백 효과', '미백 효과'],),
          IngredientModel(5, '증류수4', 3, ['피부 보습', '피부 윤기'], true, ['미백 효과', '미백 효과'],),
          IngredientModel(6, '증류수5', 3, ['피부 보습', '피부 윤기'], true, ['미백 효과', '미백 효과'],),
          IngredientModel(7, '증류수6', 4, ['피부 보습', '피부 윤기'], true, ['미백 효과', '미백 효과'],),
          IngredientModel(8, '증류수7', 5, ['피부 보습', '피부 윤기'], true, ['미백 효과', '미백 효과'],),
          IngredientModel(9, '증류수8', 5, ['피부 보습', '피부 윤기'], true, ['미백 효과', '미백 효과'],),
          IngredientModel(10, '증류수9', 5, ['피부 보습', '피부 윤기'], true, ['미백 효과', '미백 효과'],),
          IngredientModel(11, '증류수10', 6, ['피부 보습', '피부 윤기'], true, ['미백 효과', '미백 효과'],),
          IngredientModel(12, '증류수11', 6, ['피부 보습', '피부 윤기'], true, ['미백 효과', '미백 효과'],),
          IngredientModel(13, '증류수12', 7, ['피부 보습', '피부 윤기'], true, ['미백 효과', '미백 효과'],),
          IngredientModel(14, '증류수13', 7, ['피부 보습', '피부 윤기'], true, ['미백 효과', '미백 효과'],),
          // IngredientModel(1, '증류수, 물', 1, ['피부 보습', '피부 윤기','피부 윤기',], true, true, [], false, ['미백 효과', '미백 효과'],),
          // IngredientModel(2, '증류수, 물', 2, ['피부 보습', '피부 윤기'], true, true, [], true, ['미백 효과', '미백 효과'],),
          // IngredientModel(3, '증류수, 물', 2, ['피부 보습', '피부 윤기'], true, true, [], false, ['미백 효과', '미백 효과'],),
          // IngredientModel(4, '증류수, 물', 2, ['피부 보습', '피부 윤기'], true, true, [], true, ['미백 효과', '미백 효과'],),
          // IngredientModel(5, '증류수, 물', 3, ['피부 보습', '피부 윤기'], true, true, [], true, ['미백 효과', '미백 효과'],),
          // IngredientModel(6, '증류수, 물', 3, ['피부 보습', '피부 윤기'], true, true, [], false, ['미백 효과', '미백 효과'],),
          // IngredientModel(7, '증류수, 물', 4, ['피부 보습', '피부 윤기'], true, true, [], true, ['미백 효과', '미백 효과'],),
          // IngredientModel(8, '증류수, 물', 5, ['피부 보습', '피부 윤기'], true, true, [], false, ['미백 효과', '미백 효과'],),
          // IngredientModel(9, '증류수, 물', 5, ['피부 보습', '피부 윤기'], true, true, [], true, ['미백 효과', '미백 효과'],),
          // IngredientModel(10, '증류수, 물', 5, ['피부 보습', '피부 윤기'], true, true, [], false, ['미백 효과', '미백 효과'],),
          // IngredientModel(11, '증류수, 물', 6, ['피부 보습', '피부 윤기'], true, true, [], true, ['미백 효과', '미백 효과'],),
          // IngredientModel(12, '증류수, 물', 6, ['피부 보습', '피부 윤기'], true, true, [], false, ['미백 효과', '미백 효과'],),
          // IngredientModel(13, '증류수, 물', 7, ['피부 보습', '피부 윤기'], true, true, [], true, ['미백 효과', '미백 효과'],),
          // IngredientModel(14, '증류수, 물', 7, ['피부 보습', '피부 윤기'], true, true, [], false, ['미백 효과', '미백 효과'],),
        ];
  }

  void changeBookmark(int id) {
    state = state.map((ingredient) {
      if (ingredient.id == id) {
        return ingredient.copyWith(preference: !ingredient.preference);
      }
      return ingredient;
    }).toList();
  }

  List<String> getBookMarkData(List<IngredientModel> previousData){
    List<String> data = [];
    for(int i = 0; i<previousData.length; i++){
      if(previousData[i].preference != state[i].preference){
        data.add(state[i].name);
      }
    }
    return data;
  }
}

final previousDataProvider = StateNotifierProvider<PreviousDataNotifier, List<IngredientModel>>((ref) => PreviousDataNotifier());

class PreviousDataNotifier extends StateNotifier<List<IngredientModel>>{
  PreviousDataNotifier():super(
    []
  );

  void setData(WidgetRef ref){
    state = ref.watch(IngredientProvider);
  }
}