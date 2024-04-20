import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/dio/dio.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/common/view/default_layout.dart';
import 'package:gproject/cosmetic/provider/cosmetics/cosmetics_provider.dart';
import 'package:gproject/cosmetic/view/costetics/cosmetics_info_screen.dart';
import 'package:gproject/main.dart';

class CosmeticsScreen extends ConsumerWidget {
  const CosmeticsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(CosmeticProvider);
    return DefaultLayout(
      isBoard: true,
      child: GridView.builder(
        itemCount: state.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 7/9,
        ),
        itemBuilder: (BuildContext context, index) {
          return gridViewBox(
            name: state[index].name,
            imgPath: state[index].imagePath,
            price: state[index].lowestPrice,
            func: () async {
              final data = await ref.read(CosmeticProvider.notifier).getDetail(state[index].id);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return CosmeticsInfoScreen(data: data,);
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }

  GestureDetector gridViewBox({
    required String name,
    required String imgPath,
    required int price,
    required VoidCallback func,
  }) {
    return GestureDetector(
      onTap: func,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25,),
        margin: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                imgPath == '-' ? "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4aNIlrin0wKvaB1KEly8LMJ3Pj5QlcEraE4YwAutekA&s" : '${BASE_URL}/image/${imgPath}',
                width: ratio.width * 130,
                height: ratio.height * 170,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              '최저가 ${price}원',
              style: TextStyle(
                fontSize: 13,
                color: PColors.price,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
