import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/dio/dio.dart';
import 'package:gproject/cosmetic/model/analysis/evaluation/evaluation_model.dart';
import 'package:gproject/cosmetic/model/cosmetics/recommend_cosmetic_model.dart';
import 'package:gproject/cosmetic/provider/cosmetics/recommend_cosmetic_provider.dart';

final starIndexProvider = StateNotifierProvider<StarIndexNotifier, List<int>>(
    (ref) => StarIndexNotifier());

class StarIndexNotifier extends StateNotifier<List<int>> {
  StarIndexNotifier() : super([5, 5, 5]);

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
    int? score3,
    required WidgetRef ref,
  }) async {
    EvaluationModel data = EvaluationModel(analysis_id: analysisId, analysis_score: score1, cosmetic_score: score2);
    final resp = await dio.post('${BASE_URL}/api/user/analysis/evaluation/${memberId}',
      data: data.toJson()
    );
    if(resp.statusCode == 200){
      final newData = RecommendCosmeticModel.fromJson(resp.data);
      ref.read(RecommendCosmeticProvider.notifier).setData(newData);
    }
  }
}
