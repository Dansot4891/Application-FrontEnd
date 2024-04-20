import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/cosmetic/model/analysis/analysis_model.dart';
import 'package:gproject/cosmetic/model/analysis/effect_model.dart';
import 'package:gproject/cosmetic/model/analysis/skin_type_model.dart';
import 'package:gproject/cosmetic/model/ingredient/ingredient_model.dart';

final AnalysisProvider = StateNotifierProvider<AnalysisNotifier, AnalysisModel>(
    (ref) => AnalysisNotifier());

class AnalysisNotifier extends StateNotifier<AnalysisModel> {
  AnalysisNotifier()
      : super(
          AnalysisModel(
            Ai_description:
                '대단해요. 대단해요. 대단해요. 대단해요. 대단해요. 대단해요. 대단해요. 대단해요. 대단해요. 대단해요. 대단해요. 대단해요. 대단해요. 대단해요. 대단해요. 대단해요. ',
            score: 2,
            type_posit: 1,
            type_neger: 2,
            type_danger: 3,
            AllArg_danger: 5,
            danger: 2,
            ingredient: [
              IngredientModel(
                  name: '물1',
                  grade: 1,
                  purpose: ['수분 증진1'],
                  preference: false,
                  features: ['미백 효과1'],
                  skin_type: [
                    SkinTypeModel(
                        id: 1,
                        skin_type: 'SENSITIVE',
                        skinDescription: "화학적 자외선 차단",
                        positivity_status: true),
                    SkinTypeModel(
                        id: 2,
                        skin_type: 'OILY',
                        skinDescription: "화학적 자외선 차단 성분으로 피부 자극 유발",
                        positivity_status: true),
                  ]),
              IngredientModel(
                  name: '물2',
                  grade: 1,
                  purpose: ['수분 증진'],
                  preference: false,
                  features: ['미백 효과'],
                  skin_type: [
                    SkinTypeModel(
                        id: 1,
                        skin_type: 'SENSITIVE',
                        skinDescription: "화학적 자외선 차단 성분으로 피부 자극 유발",
                        positivity_status: true),
                    SkinTypeModel(
                        id: 2,
                        skin_type: 'DRY',
                        skinDescription: "화학적 자극 유발",
                        positivity_status: true),
                  ]),
              IngredientModel(
                  name: '물3',
                  grade: 2,
                  purpose: ['수분 증진1'],
                  preference: false,
                  features: ['미백 효과1'],
                  skin_type: [
                    SkinTypeModel(
                        id: 1,
                        skin_type: 'SENSITIVE',
                        skinDescription: "화학적 자극 유발",
                        positivity_status: false),
                    SkinTypeModel(
                        id: 2,
                        skin_type: 'DRY',
                        skinDescription: "화학적 자외선 차단 성분으로 피부 자극 유발",
                        positivity_status: false),
                  ]),
              IngredientModel(
                  name: '물4',
                  grade: 2,
                  purpose: ['수분 증진'],
                  preference: false,
                  features: ['미백 효과']),
              IngredientModel(
                  name: '물5',
                  grade: 1,
                  purpose: ['수분 증진1'],
                  preference: false,
                  features: ['미백 효과1'],
                  skin_type: [
                    SkinTypeModel(
                        id: 1,
                        skin_type: 'SENSITIVE',
                        skinDescription: "화학적 자외선 차단",
                        positivity_status: true),
                    SkinTypeModel(
                        id: 2,
                        skin_type: 'OILY',
                        skinDescription: "화학적 자외선 차단 성분으로 피부 자극 유발",
                        positivity_status: false),
                  ]),
              IngredientModel(
                  name: '물6',
                  grade: 1,
                  purpose: ['수분 증진1'],
                  preference: false,
                  features: ['미백 효과1'],
                  skin_type: [
                    SkinTypeModel(
                        id: 1,
                        skin_type: 'SENSITIVE',
                        skinDescription: "화학적 자외선 차단",
                        positivity_status: true),
                    SkinTypeModel(
                        id: 2,
                        skin_type: 'OILY',
                        skinDescription: "자외선 차단",
                        positivity_status: true),
                  ]),
              IngredientModel(
                  name: '물7',
                  grade: 2,
                  purpose: ['수분 증진'],
                  preference: false,
                  features: ['미백 효과']),
              IngredientModel(
                  name: '물8',
                  grade: 5,
                  purpose: ['수분 증진2'],
                  preference: false,
                  features: ['미백 효과2'],
                  skin_type: [
                    SkinTypeModel(
                        id: 1,
                        skin_type: 'DRY',
                        skinDescription: "자외선 차단",
                        positivity_status: false),
                    SkinTypeModel(
                        id: 2,
                        skin_type: 'OILY',
                        skinDescription: "화학적 자극 유발",
                        positivity_status: true),
                  ]),
              IngredientModel(
                  name: '물9',
                  grade: 4,
                  purpose: ['수분 증진'],
                  preference: false,
                  features: ['미백 효과']),
              IngredientModel(
                  name: '물10',
                  grade: 6,
                  purpose: ['수분 증진2'],
                  preference: false,
                  features: ['미백 효과2'],
                  skin_type: [
                    SkinTypeModel(
                        id: 1,
                        skin_type: 'SENSITIVE',
                        skinDescription: "화학적 자외선 차단",
                        positivity_status: true),
                    SkinTypeModel(
                        id: 2,
                        skin_type: 'DRY',
                        skinDescription: "자외선 차단",
                        positivity_status: true),
                  ]),
              IngredientModel(
                  name: '물11',
                  grade: 7,
                  purpose: ['수분 증진'],
                  preference: false,
                  features: ['미백 효과']),
              IngredientModel(
                  name: '물12',
                  grade: 9,
                  purpose: ['수분 증진2'],
                  preference: false,
                  features: ['미백 효과2'],
                  skin_type: [
                    SkinTypeModel(
                        id: 1,
                        skin_type: 'DRY',
                        skinDescription: "자외선 차단",
                        positivity_status: false),
                    SkinTypeModel(
                        id: 2,
                        skin_type: 'OILY',
                        skinDescription: "화학적 자외선 차단 성분으로 피부 자극 유발",
                        positivity_status: true),
                  ]),
            ],
          ),
        );

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
  List<EffectModel> effectList(){
    List<String> effectText = [];
    List<IngredientModel> list = state.ingredient;
    for(var data in list){
      for(var feature in data.features){
        effectText.add(feature);
      }
      for(var purpose in data.purpose){
        effectText.add(purpose);
      }
    }
    effectText = effectText.toSet().toList();
    
    List<EffectModel> effectList = [];

    for(var data in effectText){
      effectList.add(EffectModel(num: 0, text: data));
    }
    for(var data in list){
      for(var feature in data.features){
        for(int i = 0; i<effectList.length; i++){
          if((effectList[i].text == feature)){
            effectList[i] = effectList[i].copyWith(text: effectList[i].text, num: effectList[i].num + 1);
          }
        }
      }
      for(var purpose in data.purpose){
        for(int i = 0; i<effectList.length; i++){
          if((effectList[i].text == purpose)){
            effectList[i] = effectList[i].copyWith(text: effectList[i].text, num: effectList[i].num + 1);
          }
        }
      }
    }
    return effectList;
  }

  // List<List<IngredientModel>> seperEffectList(WidgetRef ref){
  //   final data = ref.read(AnalysisProvider.notifier).effectList();
  //   for(var val in data){
  //     if()
  //   }
  //   return [];
  // }
}
