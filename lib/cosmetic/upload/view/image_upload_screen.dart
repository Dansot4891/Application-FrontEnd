import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gproject/common/component/button.dart';
import 'package:gproject/common/variable/color/color.dart';
import 'package:gproject/common/variable/image_path/image_path.dart';
import 'package:gproject/common/view/default_layout.dart';
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
                  multiImage = await picker.pickMultiImage();
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
            child: CustomButton(text: '성분 분석', func: () {}),
          )
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
      child: image == null
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
