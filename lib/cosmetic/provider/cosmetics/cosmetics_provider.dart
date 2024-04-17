import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/dio/dio.dart';
import 'package:gproject/cosmetic/model/cosmetics/cosmetic_model.dart';
import 'package:gproject/cosmetic/model/cosmetics/cosmetic_purchase.dart';

final CosmeticProvider = StateNotifierProvider<CosmeticNotifier, List<CosmeticModel>>((ref) => CosmeticNotifier());

class CosmeticNotifier extends StateNotifier<List<CosmeticModel>> {
  CosmeticNotifier() : super([
    ]);

  Future<void> fetchData() async {

    if(state.length == 0){
      List<CosmeticModel> data = [];
    try{
      final resp = await dio.get('http://ceprj.gachon.ac.kr:60006/api/user/cosmetic_list');
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

  Future<CosmeticModel> getDetail(int id) async {
    CosmeticModel? data;
    try{
      final resp = await dio.get('http://ceprj.gachon.ac.kr:60006/api/user/cosmetic_detail/${id}');
      if(resp.statusCode == 200){
        print(resp.data);
        data = CosmeticModel.fromJson(resp.data);
      }
    }catch(e){
      
    }
    return data!;
  }
}
