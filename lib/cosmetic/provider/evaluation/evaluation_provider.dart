import 'package:flutter_riverpod/flutter_riverpod.dart';

final starIndexProvider = StateNotifierProvider<StarIndexNotifier, int>((ref) => StarIndexNotifier());

class StarIndexNotifier extends StateNotifier<int>{
  StarIndexNotifier():super(
    5
  );

  void setIndex(int index){
    state = index;
  }
}

final starIndexProvider2 = StateNotifierProvider<StarIndexNotifier, int>((ref) => StarIndexNotifier());

class StarIndexNotifier2 extends StateNotifier<int>{
  StarIndexNotifier2():super(
    5
  );

  void setIndex(int index){
    state = index;
  }
}