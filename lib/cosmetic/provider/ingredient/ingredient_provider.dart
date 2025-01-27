import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/dio/dio.dart';
import 'package:gproject/cosmetic/model/ingredient/ingredient_model.dart';
import 'package:gproject/cosmetic/provider/ingredient/ingredient_button_provider.dart';

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

final IngredientProvider =
    StateNotifierProvider<IngredientNotifier, List<IngredientModel>>(
        (ref) => IngredientNotifier());

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

  void setData(List<IngredientModel> data){
    state = data;
  }

  void changeBookmark({required String name, WidgetRef? ref}) {
    print('변경할 성분 이름 : ${name}');
    if(ref != null){
          ref.read(compareIngredientProvider.notifier).changeBookmark(name: name);
    }
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
    if(data.length == 0){
      return true;
    }
    try{
      print(data);
      final resp = await dio.put('${BASE_URL}/api/user/ingredient/preferenve/${memberId}',
        data: jsonEncode(data),
        
      );
      if(resp.statusCode==200){
        print(data);
        print('성공');
        return true;
      }
      else{
        print('실패');
        return false;
      }
    }catch(e){
      print(e);
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

final ingredientSortProvider = StateNotifierProvider<IngredientSortNotifier, int>((ref) => IngredientSortNotifier());

class IngredientSortNotifier extends StateNotifier<int>{
  IngredientSortNotifier():super(0);

  setIndex(int num){
    state = num;
  }
}











final compareIngredientProvider =
    StateNotifierProvider<CompareIngredientNotifier, List<IngredientModel>>(
        (ref) => CompareIngredientNotifier());

class CompareIngredientNotifier extends StateNotifier<List<IngredientModel>> {
  CompareIngredientNotifier()
      : super([

        ]);

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

  void setData(List<IngredientModel> data){
    state = data;
  }

  void changeBookmark({required String name, WidgetRef? ref}) {
    if(ref != null){
      ref.read(IngredientProvider.notifier).changeBookmark(name: name);
    }
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
    if(data.length == 0){
      return true;
    }
    try{
      final resp = await dio.put('${BASE_URL}/api/user/ingredient/preferenve/${memberId}',
        data: jsonEncode(data),
        
      );
      if(resp.statusCode==200){
        print(data);
        print('성공');
        return true;
      }
      else{
        return false;
      }
    }catch(e){
      print(e);
      return false;
    }
  }
}

final comparePreviousDataProvider = StateNotifierProvider<ComparePreviousDataNotifier, List<IngredientModel>>((ref) => ComparePreviousDataNotifier());

class ComparePreviousDataNotifier extends StateNotifier<List<IngredientModel>>{
  ComparePreviousDataNotifier():super(
    []
  );

  void setData(WidgetRef ref){
    state = ref.watch(compareIngredientProvider);
  }
}
