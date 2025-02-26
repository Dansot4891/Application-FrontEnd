import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/component/dialog.dart';
import 'package:gproject/common/dio/dio.dart';
import 'package:gproject/common/view/home_screen.dart';
import 'package:gproject/loading/provider/loading_image_provider.dart';
import 'package:gproject/loading/view/loading_screen.dart';
import 'package:gproject/cosmetic/model/analysis/analysis_model.dart';
import 'package:gproject/cosmetic/model/analysis/effect_model.dart';
import 'package:gproject/cosmetic/model/analysis/skin_type_model.dart';
import 'package:gproject/cosmetic/model/ingredient/ingredient_model.dart';
import 'package:gproject/cosmetic/provider/anlysis/compare_analysis_provider.dart';
import 'package:gproject/cosmetic/provider/ingredient/ingredient_provider.dart';
import 'package:gproject/cosmetic/view/analysis/analysis_screen.dart';
import 'package:image_picker/image_picker.dart';

final analysisNumProvider = StateProvider<int>((ref) => 0); // 초기값으로 0을 설정합니다.

final AnalysisProvider = StateNotifierProvider<AnalysisNotifier, List<AnalysisModel>>(
    (ref) => AnalysisNotifier());

class AnalysisNotifier extends StateNotifier<List<AnalysisModel>> {
  AnalysisNotifier()
      : super(
        []
      );

  void setData(WidgetRef ref){
    state = ref.watch(compareAnalysisProvider).analysisList;
  }

  Future<void> fetchData(int id, dynamic aId) async {
    try {
      final resp =
          await dio.get('${BASE_URL}/api/user/${id}/analysis/result/${aId}');
      if (resp.statusCode == 200) {
        state = [];
        state = [...state, AnalysisModel.fromJson(resp.data)];
      }
    } catch (e) {
      print(e);
    }
  }

  //grade별 퍼센트 숫자
  List<int> percentList(int index) {
    List<int> list = [];
    final data = state[index].ingredient;
    int safe = 0;
    int middle = 0;
    int danger = 0;
    for (var obj in data) {
      if (obj.grade == 1 || obj.grade == 2) {
        safe++;
      }
      if (obj.grade == 3 ||
          obj.grade == 4 ||
          obj.grade == 5 ||
          obj.grade == 6) {
        middle++;
      }
      if (obj.grade == 7 ||
          obj.grade == 8 ||
          obj.grade == 9 ||
          obj.grade == 10) {
        danger++;
      }
    }
    list.add(safe);
    list.add(middle);
    list.add(danger);
    return list;
  }

  //효과별 성분
  List<EffectModel> effectList(AnalysisModel? compareData, int index) {
    List<String> effectText = [];
    List<IngredientModel> list = compareData == null ? state[index].ingredient : compareData.ingredient;
    for (var data in list) {
      for (var feature in data.features) {
        effectText.add(feature);
      }
      for (var purpose in data.purpose) {
        effectText.add(purpose);
      }
    }
    effectText = effectText.toSet().toList();

    List<EffectModel> effectList = [];

    for (var data in effectText) {
      effectList.add(EffectModel(num: 0, text: data));
    }
    for (var data in list) {
      for (var feature in data.features) {
        for (int i = 0; i < effectList.length; i++) {
          if ((effectList[i].text == feature)) {
            effectList[i] = effectList[i]
                .copyWith(text: effectList[i].text, num: effectList[i].num + 1);
          }
        }
      }
      for (var purpose in data.purpose) {
        for (int i = 0; i < effectList.length; i++) {
          if ((effectList[i].text == purpose)) {
            effectList[i] = effectList[i]
                .copyWith(text: effectList[i].text, num: effectList[i].num + 1);
          }
        }
      }
    }
    effectList.sort((a, b) => b.num.compareTo(a.num));
    return effectList;
  }

  // 피부 타입 리스트
  List<EffectModel> skinEffectList(AnalysisModel? compareData, int index) {

    List<String> effectText = [];
    List<IngredientModel> list = compareData == null ? state[index].ingredient : compareData.ingredient;
    for (var data in list) {
      for (var skinType in data.skin_type ?? []) {
        effectText.add(skinType.skinDescription);
      }
    }
    effectText = effectText.toSet().toList();

    List<EffectModel> effectList = [];

    for (var data in effectText) {
      effectList.add(EffectModel(num: 0, text: data));
    }
    for (var data in list) {
      for (var skinType in data.skin_type ?? []) {
        for (int i = 0; i < effectList.length; i++) {
          if ((effectList[i].text == skinType.skinDescription &&
              skinType.positivity_status == true)) {
            effectList[i] = effectList[i]
                .copyWith(text: effectList[i].text, num: effectList[i].num + 1);
          }
          if ((effectList[i].text == skinType.skinDescription &&
              skinType.positivity_status == false)) {
            effectList[i] = effectList[i].copyWith(
                text: effectList[i].text,
                num: effectList[i].num,
                badnum: effectList[i].badnum == null
                    ? 1
                    : effectList[i].badnum! + 1);
          }
        }
      }
    }
    return effectList;
  }

  List<IngredientModel> skinTypeData(String type, int index) {
    List<IngredientModel> list = [];
    for (var data in state[index].ingredient) {
      if (data.skin_type != null) {
        for (int i = 0; i < data.skin_type!.length; i++) {
          if (
              data.skin_type![i].skin_type == type) {
            List<SkinTypeModel> subdata2 = [];
            subdata2.add(data.skin_type![i]);
            final subdata = data.copyWith(
                name: data.name,
                grade: data.grade,
                purpose: data.purpose,
                preference: data.preference,
                features: data.features,
                skin_type: subdata2);
            list.add(subdata);
          }
        }
      }
    }
    return list;
  }

  List<IngredientModel> skinTypeBadData(String type, int index) {
    List<IngredientModel> list = [];
    for (var data in state[index].ingredient) {
      if (data.skin_type != null) {
        for (int i = 0; i < data.skin_type!.length; i++) {
          if (!data.skin_type![i].positivity_status &&
              data.skin_type![i].skin_type == type) {
            List<SkinTypeModel> subdata2 = [];
            subdata2.add(data.skin_type![i]);
            final subdata = data.copyWith(
                name: data.name,
                grade: data.grade,
                purpose: data.purpose,
                preference: data.preference,
                features: data.features,
                skin_type: subdata2);
            list.add(subdata);
          }
        }
      }
    }
    return list;
  }

  String skinTypeVal(WidgetRef ref, int index) {
    final sensitive =
        ref.read(AnalysisProvider.notifier).skinTypeData('SENSITIVE', index);
    final dry = ref.read(AnalysisProvider.notifier).skinTypeData('DRY', index);
    final oily = ref.read(AnalysisProvider.notifier).skinTypeData('OILY', index);

    if (sensitive.length > dry.length && sensitive.length > oily.length) {
      return '민감성';
    } else if (dry.length > sensitive.length && dry.length > oily.length) {
      return '건성';
    } else if (oily.length > dry.length && oily.length > sensitive.length) {
      return '지성';
    } else if (sensitive.length > dry.length &&
        sensitive.length == oily.length) {
      return '민감성, 지성';
    } else if (dry.length > sensitive.length && dry.length == oily.length) {
      return '건성, 지성';
    } else if (oily.length > dry.length && oily.length == sensitive.length) {
      return '지성, 민감성';
    } else {
      return '모든 피부';
    }
  }

  Future requestAnalysisList(BuildContext context, WidgetRef ref, XFile image, int memberId) async {
    await ref.read(loadingImgProvider.notifier).fetchData();
    try {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return LoadingScreen();
          },
        ),
      );
      dynamic sendData = image.path;
      var formData =
          FormData.fromMap({'file': await MultipartFile.fromFile(sendData)});
      final resp = await dio.post('${BASE_URL}/api/user/analysis/${memberId}',
          options: Options(
            headers: {
              "Content-Type": "multipart/form-data",
            },
          ),
          data: formData
          );
      if (resp.statusCode == 200) {
        final analysisId = resp.data;
        ref.watch(analysisNumProvider.notifier).state = analysisId;
        CustomDialog(
          context: context,
          barrierDismissible: false,
          title: '분석이 완료되었습니다!',
          buttonText: '확인',
          buttonCount: 1,
          func: () async {
            await ref.read(AnalysisProvider.notifier).fetchData(memberId, analysisId);
            ref.read(IngredientProvider.notifier).setData(ref.watch(AnalysisProvider)[0].ingredient);
            ref.read(previousDataProvider.notifier).setData(ref);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return AnalysisScreen(isCompare: false,);
                },
              ),
            );
          },
        );
      } else {
        CustomDialog(context: context, title: '텍스트 인식이 불가능합니다.\n다른 이미지를 사용해주세요.', buttonText: '확인', buttonCount: 1, func: (){
          Navigator.push(context, MaterialPageRoute(builder: (_){
            return HomeScreen();
          }));
        });
      }
    } catch (e) {
      CustomDialog(context: context, title: '텍스트 인식이 불가능합니다.\n다른 이미지를 사용해주세요.', buttonText: '확인', buttonCount: 1, func: (){
          Navigator.push(context, MaterialPageRoute(builder: (_){
            return HomeScreen();
          }));
        });
    }
  }

  Future requestCompareAnalysisList(BuildContext context, WidgetRef ref, List<XFile?> images, int memberId) async {
    print('요청 들어감');
    await ref.read(loadingImgProvider.notifier).fetchData();
    try {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return LoadingScreen();
          },
        ),
      );
      FormData formData = FormData();
      for (int i = 0; i < images.length; i++) {
        XFile? image = images[i];
        if (image != null) {
          formData.files.add(MapEntry(
            'file${i+1}', // 각 파일 필드에 고유한 이름 할당
            await MultipartFile.fromFile(image.path),
          ));
        }
      }
      final resp = await dio.post('${BASE_URL}/api/user/comparison/analysis/${memberId}',
          options: Options(
            headers: {
              "content-type": "multipart/form-data",
            },
          ),
          data: formData
        );
      if (resp.statusCode == 200) {
        final analysisId = resp.data;
        ref.watch(analysisNumProvider.notifier).state = analysisId;
        CustomDialog(
          barrierDismissible: false,
          context: context,
          title: '분석이 완료되었습니다!',
          buttonText: '확인',
          buttonCount: 1,
          func: () async {
            await ref.read(compareAnalysisProvider.notifier).fetchData(memberId, analysisId);
            ref.read(AnalysisProvider.notifier).setData(ref);
            ref.read(IngredientProvider.notifier).setData(ref.watch(compareAnalysisProvider).analysisList[0].ingredient);
            ref.read(compareIngredientProvider.notifier).setData(ref.watch(compareAnalysisProvider).analysisList[1].ingredient);
            ref.read(previousDataProvider.notifier).setData(ref);
            ref.read(comparePreviousDataProvider.notifier).setData(ref);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return AnalysisScreen(isCompare: true,);
                },
              ),
            );
          },
        );
      } else {
        print('실패');
      }
    } catch (e) {
      print(e);
    }
   }
}
