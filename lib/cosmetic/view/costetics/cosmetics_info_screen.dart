import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/component/dialog.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/common/view/default_layout.dart';
import 'package:gproject/cosmetic/model/cosmetics/cosmetic_purchase.dart';
import 'package:gproject/cosmetic/provider/cosmetics/cosmetic_info_provider.dart';
import 'package:gproject/main.dart';
import 'package:url_launcher/url_launcher.dart';

class CosmeticsInfoScreen extends ConsumerWidget {
  const CosmeticsInfoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(CosmeticInfoProvider);
    print(ref.watch(CosmeticInfoProvider));
    print('--------------------------------------------------------------------------');
    print(data);
    return DefaultLayout(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              data.imagePath.startsWith('/') ? 'http:${data.imagePath}' : data.imagePath,
              width: double.infinity,
              fit: BoxFit.cover,
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
                  SizedBox(
                    height: ratio.height * 20,
                  ),
                  Text(
                    data.name,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: ratio.height * 10,
                  ),
                  Text(
                    '최저가 ${data.lowestPrice}원',
                    style: TextStyle(
                      fontSize: 18,
                      color: PColors.price,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: ratio.height * 20,
                  ),
                  ListView.builder(
                    itemCount: data.cosmeticPurchaseLinks!.length,
                    shrinkWrap: true,
                    itemBuilder: ((context, index) {
                      return purchasingOffice(
                        context,
                        data.cosmeticPurchaseLinks![index],
                      );
                    }),
                  ),
                ],
              ),
            ),
            SizedBox(height : ratio.height * 30),
          ],
        ),
      ),
    );
  }

  Padding purchasingOffice(
    BuildContext context,
    CosmeticPurchaseModel price,
  ) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            price.purchaseSite,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
          Expanded(
            child: Text(
              '${price.price}원',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.right,
            ),
          ),
          GestureDetector(
            onTap: () async {
              final url = Uri.parse(
                '${price.url}',
              );
              if (await canLaunchUrl(url)) {
                launchUrl(url);
              } else {
                CustomDialog(
                  context: context,
                  title: '에러입니다. 다시 시도해 주세요.',
                  buttonText: '확인',
                  buttonCount: 1,
                  func: () {
                    Navigator.pop(context);
                  },
                );
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Icon(
                Icons.chevron_right,
                size: 35,
                color: PColors.mainColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
