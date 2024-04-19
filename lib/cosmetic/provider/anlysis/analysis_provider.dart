import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/cosmetic/model/analysis/analysis_model.dart';
import 'package:gproject/cosmetic/model/ingredient/ingredient_model.dart';

final AnalysisProvider = StateNotifierProvider<AnalysisNotifier, AnalysisModel>((ref) => AnalysisNotifier());

class AnalysisNotifier extends StateNotifier<AnalysisModel> {
  AnalysisNotifier()
      : super(AnalysisModel(
          Ai_description:
              '대단해요. 대단해요. 대단해요. 대단해요. 대단해요. 대단해요. 대단해요. 대단해요. 대단해요. 대단해요. 대단해요. 대단해요. 대단해요. 대단해요. 대단해요. 대단해요. ',
          score: 2,
          type_posit: 1,
          type_neger: 2,
          type_danger: 3,
          AllArg_danger: 5,
          danger: 2,
          ingredientDTO: [
            IngredientModel(name: '물1', grade: 1, purpose: ['수분 증진'], preference: false, features: ['미백 효과']),
            IngredientModel(name: '물2', grade: 1, purpose: ['수분 증진'], preference: false, features: ['미백 효과']),
            IngredientModel(name: '물3', grade: 2, purpose: ['수분 증진'], preference: false, features: ['미백 효과']),
            IngredientModel(name: '물4', grade: 2, purpose: ['수분 증진'], preference: false, features: ['미백 효과']),
            IngredientModel(name: '물5', grade: 1, purpose: ['수분 증진'], preference: false, features: ['미백 효과']),
            IngredientModel(name: '물6', grade: 1, purpose: ['수분 증진'], preference: false, features: ['미백 효과']),
            IngredientModel(name: '물7', grade: 2, purpose: ['수분 증진'], preference: false, features: ['미백 효과']),
            IngredientModel(name: '물8', grade: 5, purpose: ['수분 증진'], preference: false, features: ['미백 효과']),
            IngredientModel(name: '물9', grade: 4, purpose: ['수분 증진'], preference: false, features: ['미백 효과']),
            IngredientModel(name: '물10', grade: 6, purpose: ['수분 증진'], preference: false, features: ['미백 효과']),
            IngredientModel(name: '물11', grade: 7, purpose: ['수분 증진'], preference: false, features: ['미백 효과']),
            IngredientModel(name: '물12', grade: 10, purpose: ['수분 증진'], preference: false, features: ['미백 효과']),
          ],
        ),
      );
    
    List<int> percentList(){
      List<int> list = [];
      final data = state.ingredientDTO;
      int safe = 0;
      int middle = 0;
      int danger = 0;
      for(var obj in data){
        if(obj.grade == 1 || obj.grade == 2){
          safe ++;
        }
        if(obj.grade == 3 || obj.grade == 4 || obj.grade == 5 || obj.grade == 6){
          middle ++;
        }
        if(obj.grade == 7 || obj.grade == 8 || obj.grade == 9 || obj.grade == 10){
          danger ++;
        }
      }
      list.add(safe);
      list.add(middle);
      list.add(danger);
      return list;
    }
}
