import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gproject/common/component/dialog.dart';
import 'package:gproject/common/variable/color/color.dart';
import 'package:gproject/common/variable/image_path/image_path.dart';
import 'package:gproject/common/view/default_layout.dart';
import 'package:gproject/main.dart';
import 'package:url_launcher/url_launcher.dart';

class CosmeticsInfoScreen extends StatelessWidget {
  const CosmeticsInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
        child: Column(
      children: [
        Image.asset(
          ImgPath.sample,
          width: double.infinity,
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: ratio.height * 40,),
              Text(
                '레이어 물톡스 램프',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Text(
                '최저가 37000원',
                style: TextStyle(
                  fontSize: 18,
                  color: PColors.price,
                  fontWeight: FontWeight.w500,
                ),
              ),
              purchasingOffice(context),
              purchasingOffice(context),
              purchasingOffice(context),
              purchasingOffice(context),
            ],
          ),
        ),
      ],
    ));
  }

  Padding purchasingOffice(
    BuildContext context
  ) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'G마켓',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          Expanded(
            child: Text(
              '37000원',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.right,
            ),
          ),
          GestureDetector(onTap: () async {
            final url = Uri.parse(
                  'https://www.google.com/',
                );
                if (await canLaunchUrl(url)) {
                  launchUrl(url);
                } else {
                  CustomDialog(context: context, title: '에러입니다. 다시 시도해 주세요.', buttonText: '확인', buttonCount: 1, func: (){Navigator.pop(context);});
                }
          }, child: Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Icon(Icons.chevron_right, size: 35, color: PColors.mainColor,),
          ))
        ],
      ),
    );
  }
}
