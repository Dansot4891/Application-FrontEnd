import 'dart:io';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/component/button.dart';
import 'package:gproject/common/component/dialog.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/common/variable/image_path.dart';
import 'package:gproject/common/view/default_layout.dart';
import 'package:gproject/cosmetic/provider/anlysis/analysis_provider.dart';
import 'package:gproject/main.dart';
import 'package:gproject/user/provider/login_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:card_swiper/card_swiper.dart';

class ImageUpLoadScreen extends ConsumerStatefulWidget {
  final bool isCompare;
  const ImageUpLoadScreen({
    required this.isCompare,
    super.key,
  });

  @override
  ConsumerState<ImageUpLoadScreen> createState() => _ImageUpLoadScreenState();
}

final picker = ImagePicker();
XFile? image; //카메라 촬영 이미지
List<XFile?> multiImage = [];
List<XFile?> images = [];

class _ImageUpLoadScreenState extends ConsumerState<ImageUpLoadScreen> {
  @override
  void initState() {
    super.initState();
    image = null;
    images = [];
  }

  @override
  Widget build(BuildContext context) {
    final userData = ref.watch(userDataProvider);
    int memberId = userData == null ? 0 : ref.watch(userDataProvider)!.id!;
    List<Widget> areas = [
      PhotoArea(img: images.length > 0 ? images[0] : null),
      PhotoArea(img: images.length > 1 ? images[1] : null),
    ];
    return DefaultLayout(
      child: Column(
        children: [
          // 비교분석
          widget.isCompare ?
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 7 * 4,
            child: Swiper(
              itemCount: 2,
              scale: 0,
              viewportFraction: 0.75,
              scrollDirection: Axis.horizontal,
              pagination: SwiperPagination(
                alignment: Alignment.bottomCenter,
                builder: DotSwiperPaginationBuilder(
                  activeColor: PColors.mainColor,
                  color: PColors.grey3.withOpacity(0.5),
                  size: 12,
                  activeSize: 14,
                  space: 8,
                ),
              ),
              loop: false,
              itemBuilder: (context, index) {
                return areas[index];
              },
            ),
          ) : 
          // 분석
          PhotoArea(img: image),
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
                    images.add(image);
                    //images.addAll(multiImage);
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
                if (images.length == 1 && widget.isCompare) {
                  CustomDialog(
                      context: context,
                      title: '이미지를 모두 선택해주세요.',
                      buttonText: '확인',
                      buttonCount: 1,
                      func: () {
                        Navigator.pop(context);
                      });
                }
                if (image != null && !widget.isCompare) {
                  ref.read(AnalysisProvider.notifier).requestAnalysisList(context, ref, image!, memberId);
                }
                if (images.length == 2 && widget.isCompare){
                  ref.read(AnalysisProvider.notifier).requestCompareAnalysisList(context, ref, images, memberId);
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Container PhotoArea({
    required XFile? img,
  }) {
    return Container(
      margin: !widget.isCompare ? EdgeInsets.symmetric(horizontal: 50) : null,
      width: !widget.isCompare ? double.infinity : null,
      height: !widget.isCompare ? MediaQuery.of(context).size.height / 7 * 4 : null,
      decoration: BoxDecoration(
        border: Border.all(
          color: PColors.mainColor,
          width: 1,
        ),
      ),
      child: img == null
          ? Center(
              child: Text(
                '선택된 이미지가 없습니다.',
              ),
            )
          : Image.file(
              File(
                img.path,
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
