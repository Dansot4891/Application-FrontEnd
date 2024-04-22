import 'dart:io';
import 'dart:ui';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/component/button.dart';
import 'package:gproject/common/component/dialog.dart';
import 'package:gproject/common/dio/dio.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/common/variable/image_path.dart';
import 'package:gproject/common/view/default_layout.dart';
import 'package:gproject/common/view/loading_screen.dart';
import 'package:gproject/cosmetic/provider/anlysis/analysis_provider.dart';
import 'package:gproject/cosmetic/provider/ingredient/ingredient_provider.dart';
import 'package:gproject/cosmetic/view/analysis/analysis_screen.dart';
import 'package:gproject/main.dart';
import 'package:gproject/user/provider/login_provider.dart';
import 'package:image_picker/image_picker.dart';

class ImageUpLoadScreen extends ConsumerStatefulWidget {
  const ImageUpLoadScreen({super.key});

  @override
  ConsumerState<ImageUpLoadScreen> createState() => _ImageUpLoadScreenState();
}

final picker = ImagePicker();
XFile? image; //카메라 촬영 이미지
List<XFile?> multiImage = [];
List<XFile?> images = [];

class _ImageUpLoadScreenState extends ConsumerState<ImageUpLoadScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   image = null;
  // }

  @override
  Widget build(BuildContext context) {
    final userData = ref.watch(userDataProvider);
    int memberId = userData == null ? 0 : ref.watch(userDataProvider)!.id!;
    return DefaultLayout(
      child: Column(
        children: [
          PhotoArea(),
          SizedBox(
            height: ratio.height * 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              upLoadButton(
                title: '카메라',
                imgPath: ImgPath.camera,
                func: () async {
                  image = await picker.pickImage(source: ImageSource.camera);
                  if (image != null) {
                    setState(() {
                      images.add(image);
                    });
                  }
                },
              ),
              upLoadButton(
                title: '사진',
                imgPath: ImgPath.image,
                func: () async {
                  image = await picker.pickImage(source: ImageSource.gallery);
                  setState(() {
                    images.addAll(multiImage);
                  });
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 30,
            ),
            child: CustomButton(
              text: '성분 분석',
              func: () async {
                try {
                  if (image == null) {
                    CustomDialog(
                        context: context,
                        title: '이미지를 선택해주세요.',
                        buttonText: '확인',
                        buttonCount: 1,
                        func: () {
                          Navigator.pop(context);
                        });
                  }
                  if(image != null){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoadingScreen();
                        },
                      ),
                    );
                  dynamic sendData = image!.path;
                  var formData = FormData.fromMap(
                      {'file': await MultipartFile.fromFile(sendData)});
                  final resp = await dio.post(
                      '${BASE_URL}/api/user/analysis/${memberId}',
                      options: Options(
                        headers: {
                          "Content-Type": "multipart/form-data",
                        },
                      ),
                      data: formData);
                  if (resp.statusCode == 200) {
                    final analysisId = resp.data;
                    CustomDialog(
                      context: context,
                      title: '분석이 완료되었습니다!',
                      buttonText: '확인',
                      buttonCount: 1,
                      func: () async {
                        await ref.read(AnalysisProvider.notifier).fetchData(memberId, analysisId);
                        ref.read(IngredientProvider.notifier).setData(ref.watch(AnalysisProvider).ingredient);
                        ref.read(previousDataProvider.notifier).setData(ref);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return AnalysisScreen();
                            },
                          ),
                        );
                      },
                    );
                  } else {
                    print('실패');
                  }
                  }
                } catch (e) {
                  print(e);
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Container PhotoArea() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 50,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: PColors.mainColor,
          width: 1,
        ),
      ),
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 7 * 4,
      child: (image == null || images.length == 0)
          ? Center(
              child: Text(
                '선택된 이미지가 없습니다.',
              ),
            )
          : Image.file(
              File(
                image!.path,
              ),
              fit: BoxFit.cover,
            ),
    );
  }

  InkWell upLoadButton({
    required String title,
    required String imgPath,
    required VoidCallback func,
  }) {
    return InkWell(
      onTap: func,
      child: Container(
        width: ratio.width * 110,
        height: ratio.height * 110,
        decoration: BoxDecoration(
          border: Border.all(
            color: PColors.mainColor,
            width: 2,
          ),
          shape: BoxShape.circle,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imgPath,
              width: ratio.width * 60,
              height: ratio.height * 60,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
