import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/dio/dio.dart';
import 'package:gproject/cosmetic/model/analysis/analysis_model.dart';
import 'package:gproject/cosmetic/model/analysis/effect_model.dart';
import 'package:gproject/cosmetic/model/analysis/skin_type_model.dart';
import 'package:gproject/cosmetic/model/ingredient/ingredient_model.dart';

final AnalysisProvider = StateNotifierProvider<AnalysisNotifier, AnalysisModel>(
    (ref) => AnalysisNotifier());

class AnalysisNotifier extends StateNotifier<AnalysisModel> {
  AnalysisNotifier()
      : super(
        AnalysisModel(ai_description: 'Ai_description', score: 0, type_posit: 0, type_nega: 0, type_danger: 0, allArg_danger: 0, danger: 0, ingredient: [])
        );

  Future<void> fetchData(int id) async {
    try{
      final resp = await dio.get('${BASE_URL}/api/user/${id}/analysis/result/1');
      if(resp.statusCode == 200){
        state = AnalysisModel.fromJson(resp.data);
      }
    }catch(e){

    }
  }

  //grade별 퍼센트 숫자
  List<int> percentList() {
    List<int> list = [];
    final data = state.ingredient;
    int safe = 0;
    int middle = 0;
    int danger = 0;
    for (var obj in data) {
      if (obj.grade == 1 || obj.grade == 2) {
        safe++;
      }
      if (obj.grade == 3 ||
          obj.grade == 4 ||
          obj.grade == 5 ||
          obj.grade == 6) {
        middle++;
      }
      if (obj.grade == 7 ||
          obj.grade == 8 ||
          obj.grade == 9 ||
          obj.grade == 10) {
        danger++;
      }
    }
    list.add(safe);
    list.add(middle);
    list.add(danger);
    return list;
  }

  //효과별 성분
  List<EffectModel> effectList() {
    List<String> effectText = [];
    List<IngredientModel> list = state.ingredient;
    for (var data in list) {
      for (var feature in data.features) {
        effectText.add(feature);
      }
      for (var purpose in data.purpose) {
        effectText.add(purpose);
      }
    }
    effectText = effectText.toSet().toList();

    List<EffectModel> effectList = [];

    for (var data in effectText) {
      effectList.add(EffectModel(num: 0, text: data));
    }
    for (var data in list) {
      for (var feature in data.features) {
        for (int i = 0; i < effectList.length; i++) {
          if ((effectList[i].text == feature)) {
            effectList[i] = effectList[i]
                .copyWith(text: effectList[i].text, num: effectList[i].num + 1);
          }
        }
      }
      for (var purpose in data.purpose) {
        for (int i = 0; i < effectList.length; i++) {
          if ((effectList[i].text == purpose)) {
            effectList[i] = effectList[i]
                .copyWith(text: effectList[i].text, num: effectList[i].num + 1);
          }
        }
      }
    }
    return effectList;
  }

  // 피부 타입 리스트
  List<EffectModel> skinEffectList() {
    List<String> effectText = [];
    List<IngredientModel> list = state.ingredient;
    for (var data in list) {
      for (var skinType in data.skin_type ?? []) {
        effectText.add(skinType.skinDescription);
      }
    }
    effectText = effectText.toSet().toList();

    List<EffectModel> effectList = [];

    for (var data in effectText) {
      effectList.add(EffectModel(num: 0, text: data));
    }
    for (var data in list) {
      for (var skinType in data.skin_type ?? []) {
        for (int i = 0; i < effectList.length; i++) {
          if ((effectList[i].text == skinType.skinDescription &&
              skinType.positivity_status == true)) {
            effectList[i] = effectList[i]
                .copyWith(text: effectList[i].text, num: effectList[i].num + 1);
          }
          if ((effectList[i].text == skinType.skinDescription &&
              skinType.positivity_status == false)) {
            effectList[i] = effectList[i].copyWith(
                text: effectList[i].text,
                num: effectList[i].num,
                badnum: effectList[i].badnum == null
                    ? 1
                    : effectList[i].badnum! + 1);
          }
        }
      }
    }
    return effectList;
  }

  List<IngredientModel> skinTypeData(String type) {
    List<IngredientModel> list = [];
    for (var data in state.ingredient) {
      if (data.skin_type != null) {
        for (int i = 0; i < data.skin_type!.length; i++) {
          if (data.skin_type![i].positivity_status &&
              data.skin_type![i].skin_type == type) {
            List<SkinTypeModel> subdata2 = [];
            subdata2.add(data.skin_type![i]);
            final subdata = data.copyWith(
                name: data.name,
                grade: data.grade,
                purpose: data.purpose,
                preference: data.preference,
                features: data.features,
                skin_type: subdata2);
            list.add(subdata);
          }
        }
      }
    }
    return list;
  }

  String skinTypeVal(WidgetRef ref){
    final sensitive = ref.read(AnalysisProvider.notifier).skinTypeData('SENSITIVE');
    final dry = ref.read(AnalysisProvider.notifier).skinTypeData('DRY');
    final oily = ref.read(AnalysisProvider.notifier).skinTypeData('OILY');

    if(sensitive.length > dry.length && sensitive.length > oily.length){
      return '민감성';
    }else if(dry.length > sensitive.length && dry.length > oily.length){
      return '건성';
    }else if(oily.length > dry.length && oily.length > sensitive.length){
      return '지성';
    }else if(sensitive.length > dry.length && sensitive.length == oily.length){
      return '민감성, 지성';
    }else if(dry.length > sensitive.length && dry.length == oily.length){
      return '건성, 지성';
    }else if(oily.length > dry.length && oily.length == sensitive.length){
      return '지성, 민감성';
    }else{
      return '모든 피부';
    }
  }
}