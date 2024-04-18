import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/dio/dio.dart';
import 'package:gproject/user/model/QandA_model.dart';

final QandAProvider = StateNotifierProvider<QandANotifier, List<QandAModel>>((ref) => 
  QandANotifier()
);

class QandANotifier extends StateNotifier<List<QandAModel>>{
  QandANotifier():super([
     
    ]);

  Future<void> getData(int id) async {
    try{
      state = [];
      final resp = await dio.get('${BASE_URL}/api/user/qna/list/${id}');
      if(resp.statusCode == 200){
        for(final data in resp.data){
          state.add(QandAModel.fromJson(data));
        }
      }
    }catch(e){
      print(e);
    }
  }

  List<QandAModel> fetchYesData(){
    List<QandAModel> yesList = [];
    for(int i = 0; i<state.length; i++){
      if(state[i].answer_status == true){
        yesList.add(state[i]);
      }
    }
    return yesList;
  }

  List<QandAModel> fetchNoData(){
    List<QandAModel> noList = [];
    for(int i = 0; i<state.length; i++){
      if(state[i].answer_status == false){
        noList.add(state[i]);
      }
    }
    return noList;
  }

  QandAModel? getDetail(int id){
    QandAModel? model;
    for(int i = 0; i<state.length; i++){
      if(state[i].id == id){
        model = state[i];
      }
    }
    return model;
  }
}