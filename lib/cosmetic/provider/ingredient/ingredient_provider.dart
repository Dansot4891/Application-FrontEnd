import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/dio/dio.dart';
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
            return ingredientData.where((e) => (e.grade == 3 || e.grade == 4 || e.grade == 5 || e.grade == 6)).toList();
          }
          if(buttonIndex[3] == true){
            return ingredientData.where((e) => (e.grade == 7 || e.grade == 8 || e.grade == 9 || e.grade == 10)).toList();
          }
          return [];
        },);


class IngredientNotifier extends StateNotifier<List<IngredientModel>> {
  IngredientNotifier()
      : super([

        ]);

  Future<void> fetchAllData(int memberId) async {
    List<IngredientModel> data = [];
    try{
      final resp = await dio.get("${BASE_URL}/api/user/ingredient/list/${memberId}");
      if(resp.statusCode == 200){
        for(var json in resp.data){
          data.add(IngredientModel.fromJson(json));
        }
        state = data;
      }
    }catch(e){
    }
  }

  Future<void> fetchBookMarkData(int memberId) async {
    List<IngredientModel> data = [];
    try{
      final resp = await dio.get("${BASE_URL}/api/user/preference/ingredient/list/${memberId}");
      if(resp.statusCode == 200){
        for(var json in resp.data){
          data.add(IngredientModel.fromJson(json));
        }
        state = data;
      }
    }catch(e){
    }
  }

  void changeBookmark(String name) {
    state = state.map((ingredient) {
      if (ingredient.name == name) {
        return ingredient.copyWith(preference: !ingredient.preference);
      }
      return ingredient;
    }).toList();
  }

  Future<bool> getBookMarkData(List<IngredientModel> previousData, int memberId) async {
    List<String> data = [];
    for(int i = 0; i<previousData.length; i++){
      if(previousData[i].preference != state[i].preference){
        data.add(state[i].name);
      }
    }
    try{
      final resp = await dio.put('${BASE_URL}/api/user/ingredient/list/${memberId}',
        data: data,
      );
      if(resp.statusCode==200){
        return true;
      }
      else{
        return false;
      }
    }catch(e){
      return false;
    }
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