import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/user/model/QandA_model.dart';

final QandAProvider = StateNotifierProvider<QandANotifier, List<QandAModel>>((ref) => 
  QandANotifier()
);

class QandANotifier extends StateNotifier<List<QandAModel>>{
  QandANotifier():super([
      QandAModel(
          '1', '로그아웃 오류가 나요1', '로그아웃 오류나요로그아웃 오류나요로그아웃 오류나요1', true, '조치했어요'),
      QandAModel(
          '2', '로그아웃 오류가 나요2', '로그아웃 오류나요로그아웃 오류나요로그아웃 오류나요2', true, '조치했어요'),
      QandAModel(
          '3', '로그아웃 오류가 나요3', '로그아웃 오류나요로그아웃 오류나요로그아웃 오류나요3', true, '조치했어요'),
      QandAModel(
          '4', '로그아웃 오류가 나요4', '로그아웃 오류나요로그아웃 오류나요로그아웃 오류나요4', true, '조치했어요'),
      QandAModel(
          '5', '로그아웃 오류가 나요5', '로그아웃 오류나요로그아웃 오류나요로그아웃 오류나요5', false, '조치했어요'),
      QandAModel(
          '6', '로그아웃 오류가 나요6', '로그아웃 오류나요로그아웃 오류나요로그아웃 오류나요6', true, '조치했어요'),
          QandAModel(
          '7', '로그아웃 오류가 나요7', '로그아웃 오류나요로그아웃 오류나요로그아웃 오류나요7', false, '조치했어요'),
      QandAModel(
          '8', '로그아웃 오류가 나요8', '로그아웃 오류나요로그아웃 오류나요로그아웃 오류나요8', false, '조치했어요'),
      QandAModel(
          '9', '로그아웃 오류가 나요9', '로그아웃 오류나요로그아웃 오류나요로그아웃 오류나요9', false, '조치했어요'),
    ]);

  void getData(){
    state = [
      QandAModel(
          '1', '로그아웃 오류가 나요1', '로그아웃 오류나요로그아웃 오류나요로그아웃 오류나요1', true, '조치했어요'),
      QandAModel(
          '2', '로그아웃 오류가 나요2', '로그아웃 오류나요로그아웃 오류나요로그아웃 오류나요2', true, '조치했어요'),
      QandAModel(
          '3', '로그아웃 오류가 나요3', '로그아웃 오류나요로그아웃 오류나요로그아웃 오류나요3', true, '조치했어요'),
      QandAModel(
          '4', '로그아웃 오류가 나요4', '로그아웃 오류나요로그아웃 오류나요로그아웃 오류나요4', true, '조치했어요'),
      QandAModel(
          '5', '로그아웃 오류가 나요5', '로그아웃 오류나요로그아웃 오류나요로그아웃 오류나요5', false, '조치했어요'),
      QandAModel(
          '6', '로그아웃 오류가 나요6', '로그아웃 오류나요로그아웃 오류나요로그아웃 오류나요6', true, '조치했어요'),
          QandAModel(
          '7', '로그아웃 오류가 나요7', '로그아웃 오류나요로그아웃 오류나요로그아웃 오류나요7', false, '조치했어요'),
      QandAModel(
          '8', '로그아웃 오류가 나요8', '로그아웃 오류나요로그아웃 오류나요로그아웃 오류나요8', false, '조치했어요'),
      QandAModel(
          '9', '로그아웃 오류가 나요9', '로그아웃 오류나요로그아웃 오류나요로그아웃 오류나요9', false, '조치했어요'),
    ];
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

  QandAModel getDetail(String id){
    QandAModel model = QandAModel('오류', 'qna_subject', 'qna_content', false, 'answer');
    for(int i = 0; i<state.length; i++){
      if(state[i].qna_id == id){
        model = state[i];
      }
    }
    return model;
  }
}