import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gproject/common/component/button.dart';
import 'package:gproject/common/component/dialog.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/common/variable/image_path.dart';
import 'package:gproject/common/view/default_layout.dart';
import 'package:gproject/common/view/loading_screen.dart';
import 'package:gproject/cosmetic/view/analysis/analysis_screen.dart';
import 'package:gproject/main.dart';
import 'package:image_picker/image_picker.dart';

class ImageUpLoadScreen extends StatefulWidget {
  const ImageUpLoadScreen({super.key});

  @override
  State<ImageUpLoadScreen> createState() => _ImageUpLoadScreenState();
}

final picker = ImagePicker();
XFile? image; //카메라 촬영 이미지
List<XFile?> multiImage = [];
List<XFile?> images = [];

class _ImageUpLoadScreenState extends State<ImageUpLoadScreen> {
  @override
  Widget build(BuildContext context) {
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoadingScreen();
                    },
                  ),
                );

                await Future.delayed(Duration(seconds: 3));

                CustomDialog(
                  context: context,
                  title: '분석이 완료되었습니다!',
                  buttonText: '확인',
                  buttonCount: 1,
                  func: () {
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
