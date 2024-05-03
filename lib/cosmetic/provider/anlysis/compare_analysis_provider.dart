import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/cosmetic/model/analysis/analysis_model.dart';
import 'package:gproject/cosmetic/model/analysis/compare_analysis_model.dart';
import 'package:gproject/cosmetic/model/ingredient/ingredient_model.dart';
import 'package:gproject/common/dio/dio.dart';

final compareAnalysisProvider = StateNotifierProvider<CompareAnalysisNotifier, CompareAnalysisModel>(
    (ref) => CompareAnalysisNotifier());

class CompareAnalysisNotifier extends StateNotifier<CompareAnalysisModel> {
  CompareAnalysisNotifier()
      : super(CompareAnalysisModel(analysisList: [
        AnalysisModel(
            ai_description: '최고~@!',
            score: 2,
            type_posit: 1,
            type_nega: 1,
            type_danger: 1,
            allArg_danger: 2,
            danger: 1,
            ingredient: [
              IngredientModel(name: '1물', grade: 1, purpose: [], preference: false, features: []),
              IngredientModel(name: '2물', grade: 2, purpose: [], preference: true, features: []),
              IngredientModel(name: '3물', grade: 3, purpose: [], preference: false, features: []),
              IngredientModel(name: '4물', grade: 5, purpose: [], preference: true, features: []),
              IngredientModel(name: '5물', grade: 8, purpose: [], preference: false, features: []),
              IngredientModel(name: '6물', grade: 7, purpose: [], preference: false, features: []),
              IngredientModel(name: '7물', grade: 5, purpose: [], preference: true, features: []),
              IngredientModel(name: '8물', grade: 1, purpose: [], preference: false, features: []),
              IngredientModel(name: '9물', grade: 6, purpose: [], preference: false, features: []),
              IngredientModel(name: '10물', grade: 1, purpose: [], preference: false, features: []),
              IngredientModel(name: '11물', grade: 2, purpose: [], preference: true, features: []),
            ]),
            AnalysisModel(
            ai_description: '우와우와 대박너무',
            score: 1,
            type_posit: 2,
            type_nega: 2,
            type_danger: 2,
            allArg_danger: 1,
            danger: 3,
            ingredient: [
              IngredientModel(name: '물', grade: 1, purpose: [], preference: false, features: []),
              IngredientModel(name: '물', grade: 2, purpose: [], preference: true, features: []),
              IngredientModel(name: '물', grade: 3, purpose: [], preference: false, features: []),
              IngredientModel(name: '물', grade: 5, purpose: [], preference: true, features: []),
              IngredientModel(name: '물', grade: 8, purpose: [], preference: false, features: []),
              IngredientModel(name: '물', grade: 7, purpose: [], preference: false, features: []),
              IngredientModel(name: '물', grade: 5, purpose: [], preference: true, features: []),
              IngredientModel(name: '물', grade: 1, purpose: [], preference: false, features: []),
              IngredientModel(name: '물', grade: 6, purpose: [], preference: false, features: []),
              IngredientModel(name: '물', grade: 1, purpose: [], preference: false, features: []),
              IngredientModel(name: '물', grade: 2, purpose: [], preference: true, features: []),
            ])
      ], ratio: [60,40], AI_total_description: '엄청 좋은듯? ㅋㅋ 엄청 좋은듯? ㅋㅋ 엄청 좋은듯? ㅋㅋ 엄청 좋은듯? ㅋㅋ 엄청 좋은듯? ㅋㅋ 엄청 좋은듯? ㅋㅋ 엄청 좋은듯? ㅋㅋ 엄청 좋은듯? ㅋㅋ 엄청 좋은듯? ㅋㅋ 엄청 좋은듯? ㅋㅋ 엄청 좋은듯? ㅋㅋ 엄청 좋은듯? ㅋㅋ '));

  Future fetchData(int memberId, int aid) async {
    try{
      final resp = await dio.get('${BASE_URL}/api2/user/${memberId}/comparisonAnalysis/result/${aid}',);
      if(resp.statusCode == 200){
        state = CompareAnalysisModel.fromJson(resp.data);
      }
    }catch(e){
      print(e);
    }
  }
}









