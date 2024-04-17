import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/component/dialog.dart';
import 'package:gproject/common/dio/dio.dart';

final idProvider = StateNotifierProvider<IdNotifier, String>((ref) => IdNotifier());

class IdNotifier extends StateNotifier<String> {
  IdNotifier() : super('');

  void setId(String id){
    state = id;
  }

  void resetValue(){
    state = '';
  }
}

final idCheckProvider = StateNotifierProvider<IdCheckNotifier, bool>((ref) => IdCheckNotifier());

class IdCheckNotifier extends StateNotifier<bool> {
  IdCheckNotifier() : super(false);

  Future<void> checkId(String id, BuildContext context) async {
    try {
      final resp = await dio.get(
          'http://ceprj.gachon.ac.kr:60006/api/user/existLoginId/${id}',
        );
      if (resp.statusCode == 200) {
        print('성공');
        state = true;
      }else{
        CustomDialog(context: context, title: '중복되는 아이디입니다.', buttonText: '확인', buttonCount: 1, func: (){Navigator.pop(context);});
      }
    } catch (e) {
      CustomDialog(context: context, title: '중복되는 아이디입니다.', buttonText: '확인', buttonCount: 1, func: (){Navigator.pop(context);});
      print(e);
    }
  }

  void resetValue(){
    state = false;
  }
}
