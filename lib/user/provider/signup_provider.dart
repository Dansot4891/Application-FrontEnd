import 'package:flutter_riverpod/flutter_riverpod.dart';

final genderButtonProvider = StateNotifierProvider<GenderButtonNotifier, List<bool>>((ref) => 
GenderButtonNotifier());

class GenderButtonNotifier extends StateNotifier<List<bool>>{
  GenderButtonNotifier():super(
    [true, false]
  );

  void changeValue(int index){
    state = List.generate(2, (_) => false);
    state[index] = true;
  }

  String postValue(){
    if(state[0] == true){
      return 'MALE';
    }else{
      return 'FEMALE';
    }
  }

    void reset(){
    state = [true, false];
  }
}

final typeButtonProvider = StateNotifierProvider<TypeButtonNotifier, List<bool>>((ref) => 
TypeButtonNotifier());

class TypeButtonNotifier extends StateNotifier<List<bool>>{
  TypeButtonNotifier():super(
    [true, false, false]
  );

  void changeValue(int index){
    state = List.generate(3, (_) => false);
    state[index] = true;
  }

  String postValue(){
    if(state[0] == true){
      return 'DRY';
    }else if(state[1] == true){
        return 'OILY';
    }else{
      return 'SENSITIVE';
    }
  }

  void reset(){
    state = [true, false, false];
  }
}

final worryButtonProvider = StateNotifierProvider<WorryButtonNotifier, List<bool>>((ref) => 
WorryButtonNotifier());

class WorryButtonNotifier extends StateNotifier<List<bool>>{
  WorryButtonNotifier():super(
    [true, false, false, false, false, false]
  );

  void reset(){
    state = [true, false, false, false, false, false];
  }

  void setNull(){
    if(state[0] == true){
      state = [true, false, false, false, false, false];
      state[0] = !state[0];
    }else{
      state = List.generate(6, (_) => false);
      state[0] = !state[0];
    } 
  }

  void changeValue(int index){
    //배열값 자체가 변경이 되어야하므로 새로 생성해줘야함 (복사본)
    state = List<bool>.from(state);
    state[index] = !state[index];
  }

  List<String> postValue(){
    List<String> data = [];
    if(state[0] == true){
      data.add('해당없음');
      return data;
    }
    if(state[1] == true){
      data.add('아토피');
    }
    if(state[2] == true){
      data.add('여드름');
    }
    if(state[3] == true){
      data.add('각질');
    }
    if(state[4] == true){
      data.add('미백잡티');
    }
    if(state[5] == true){
      data.add('주름탄력');
    }
    return data;
  }
}