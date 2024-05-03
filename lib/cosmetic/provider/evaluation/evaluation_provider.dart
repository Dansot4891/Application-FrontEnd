import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/dio/dio.dart';
import 'package:gproject/cosmetic/model/analysis/evaluation/evaluation_model.dart';

// final starIndexProvider1 = StateNotifierProvider<StarIndexNotifier, int>((ref) => StarIndexNotifier());

// final starIndexProvider2 = StateNotifierProvider<StarIndexNotifier, int>((ref) => StarIndexNotifier());

// final starIndexProvider3 = StateNotifierProvider<StarIndexNotifier, int>((ref) => StarIndexNotifier());

final starIndexProvider = StateNotifierProvider<StarIndexNotifier, List<int>>(
    (ref) => StarIndexNotifier());

class StarIndexNotifier extends StateNotifier<List<int>> {
  StarIndexNotifier() : super([5, 5, 5]);

  // void setIndex(int index){
  //   state = index;
  // }

  void setIndex(int listIndex, int index) {
    List<int> newState = [state[0], state[1], state[2]];
    newState[listIndex] = index;
    state = newState;
  }

  Future analysisEvaluation({
    required int memberId,
    required int analysisId,
    required int score1,
    required int score2,
  }) async {
    EvaluationModel data = EvaluationModel(analysis_id: analysisId, analysis_score: score1, cosmetic_score: score2);
    print('evaluation데이터');
    print(data.toJson());
    print('toJson 데이터');
    print(data.toJson());
    final resp = await dio.post('${BASE_URL}/api/user/analysis/evaluation/${memberId}',
      data: data.toJson()
    );
    if(resp.statusCode == 200){
      print('응답 데이터');
      print(resp.data);
    }
  }
}
