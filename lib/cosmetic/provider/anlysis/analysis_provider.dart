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
            IngredientModel(
              '물',
              1,
              ['수분 증진'],
              true,
              ['미백효과'],
            ),
            IngredientModel(
              '물1',
              4,
              ['수분 증진'],
              true,
              ['미백효과'],
            ),
            IngredientModel(
              '물2',
              6,
              ['수분 증진'],
              true,
              ['미백효과'],
            ),
            IngredientModel(
              '물3',
              9,
              ['수분 증진'],
              true,
              ['미백효과'],
            ),
            IngredientModel(
              '물',
              1,
              ['수분 증진'],
              true,
              ['미백효과'],
            ),
            IngredientModel(
              '물1',
              4,
              ['수분 증진'],
              true,
              ['미백효과'],
            ),
            IngredientModel(
              '물2',
              6,
              ['수분 증진'],
              true,
              ['미백효과'],
            ),
            IngredientModel(
              '물3',
              9,
              ['수분 증진'],
              true,
              ['미백효과'],
            ),
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
