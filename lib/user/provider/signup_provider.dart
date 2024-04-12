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
}

final typeButtonProvider = StateNotifierProvider<TypeButtonNotifier, List<bool>>((ref) => 
TypeButtonNotifier());

class TypeButtonNotifier extends StateNotifier<List<bool>>{
  TypeButtonNotifier():super(
    [true, false, false, false]
  );

  void changeValue(int index){
    state = List.generate(4, (_) => false);
    state[index] = true;
  }
}

final worryButtonProvider = StateNotifierProvider<WorryButtonNotifier, List<bool>>((ref) => 
WorryButtonNotifier());

class WorryButtonNotifier extends StateNotifier<List<bool>>{
  WorryButtonNotifier():super(
    [false, true, false, false, false, false]
  );

  void setNull(){
    if(state[0] == true){
      state = List<bool>.from(state);
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
}