import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/dio/dio.dart';
import 'package:gproject/loading/model/loading_image_model.dart';

final loadingImgProvider = StateNotifierProvider<LoadingImgNotifier, List<LoadingImgModel>>((ref) => LoadingImgNotifier());

class LoadingImgNotifier extends StateNotifier<List<LoadingImgModel>>{
  LoadingImgNotifier():super([]);

  Future<void> fetchData() async {
    try{
      state = [];
      final resp = await dio.get('${BASE_URL}/api/admin/promotion/List');
      if(resp.statusCode == 200){
        for(var data in resp.data){
          state.add(LoadingImgModel.fromJson(data));
        }
      }
    }catch(e){
      print(e);
    }
  }

}