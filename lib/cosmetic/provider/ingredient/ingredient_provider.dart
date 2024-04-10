import 'package:flutter_riverpod/flutter_riverpod.dart';

final buttonIndexProvider = StateNotifierProvider<ButtonIndexNotifier, List<bool>>((ref) =>
  ButtonIndexNotifier(),
);

class ButtonIndexNotifier extends StateNotifier<List<bool>> {
  ButtonIndexNotifier():super([
      true,
      false,
      false,
      false,
    ]);

  void changeValue(int index){
    state = List.generate(4, (_) => false);
    state[index] = true;
  }
}
