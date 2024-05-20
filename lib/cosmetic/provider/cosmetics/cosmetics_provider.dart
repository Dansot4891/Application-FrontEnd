import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/dio/dio.dart';
import 'package:gproject/cosmetic/model/cosmetics/cosmetic_model.dart';

final CosmeticPaginationDataProvider = Provider.family<List<CosmeticModel>, int>((ref, num) {
  final cosmeticData = ref.watch(CosmeticProvider);
  List<CosmeticModel> subData = cosmeticData.sublist((num-1) * 6, num * 6 >= cosmeticData.length ? cosmeticData.length : num * 6);
  return subData;
});

final CosmeticProvider = StateNotifierProvider<CosmeticNotifier, List<CosmeticModel>>((ref) => CosmeticNotifier());

class CosmeticNotifier extends StateNotifier<List<CosmeticModel>> {
  CosmeticNotifier() : super([
    ]);

  Future<void> fetchData() async {

    if(state.length == 0){
      List<CosmeticModel> data = [];
    try{
      final resp = await dio.get('${BASE_URL}/api/user/cosmetic_list');
      if(resp.statusCode == 200){
        for(var json in resp.data){
          data.add(CosmeticModel.fromJson(json));
        }
        state = data;
      }
    }catch(e){
      print(e);
    }
    }
  }

  Future getDetail(int id) async {
    List<CosmeticModel> data = [];
    try{
      final resp = await dio.get('${BASE_URL}/api/user/cosmetic_detail/${id}');
      if(resp.statusCode == 200){
        data = [CosmeticModel.fromJson(resp.data)];
      }
    }catch(e){
      
    }
    state = data;
  }
}

final cosmeticPaginationProvider = StateNotifierProvider<CosmeticPaginationNotifier, int>((ref) => CosmeticPaginationNotifier());

class CosmeticPaginationNotifier extends StateNotifier<int>{
  CosmeticPaginationNotifier():super(1);

  void setPaging(int num){
    state = num;
  }
}

final cosmeticPaginationNumProvider = StateNotifierProvider<CosmeticPaginationNumNotifier, int>((ref) => CosmeticPaginationNumNotifier());

class CosmeticPaginationNumNotifier extends StateNotifier<int>{
  CosmeticPaginationNumNotifier():super(0);

  void setPlusNum(){
    state = state + 1;
  }

  void setMinusNum(){
    if(state == 0){
      return;
    }
    state = state - 1;
  }
}