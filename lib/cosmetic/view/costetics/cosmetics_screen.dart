import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/common/view/default_layout.dart';
import 'package:gproject/cosmetic/provider/cosmetics/cosmetic_info_provider.dart';
import 'package:gproject/cosmetic/provider/cosmetics/cosmetics_provider.dart';
import 'package:gproject/cosmetic/view/costetics/cosmetics_info_screen.dart';
import 'package:gproject/main.dart';

class CosmeticsScreen extends ConsumerWidget {
  const CosmeticsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pagination = ref.watch(cosmeticPaginationProvider);
    final state = ref.watch(CosmeticPaginationDataProvider(pagination));
    final pagingNum = ref.watch(cosmeticPaginationNumProvider);
    return DefaultLayout(
      isBoard: true,
      child: CustomScrollView(
        slivers: [
          SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index){
              return gridViewBox(
                name: state[index].name,
                imgPath: state[index].imagePath,
                price: state[index].lowestPrice,
                func: () async {
                  await ref.read(CosmeticInfoProvider.notifier).getDetail(state[index].id);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return CosmeticsInfoScreen();
                      },
                    ),
                  );
                },
              );
            },
            childCount: state.length,
            ),
             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 4 / 6,
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: 
            Column(
              children: [
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(onPressed: (){
                      ref.read(cosmeticPaginationNumProvider.notifier).setMinusNum();
                    }, icon: Icon(Icons.chevron_left)),
                    ...List.generate(
                      2,
                      (index) {
                        if(2* pagingNum + index+1 > (ref.watch(CosmeticProvider).length / 6).ceil()){
                          return SizedBox();
                        }
                        return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: TextButton(onPressed: (){
                          ref.read(cosmeticPaginationProvider.notifier).setPaging(2* pagingNum + index+1);
                        },
                        child: Text((2* pagingNum + index+1).toString()),),
                      );
                      },
                    ),
                    IconButton(onPressed: (){
                      if(2* (pagingNum+1) > (ref.watch(CosmeticProvider).length / 6).ceil()){
                          return;
                      }
                      ref.read(cosmeticPaginationNumProvider.notifier).setPlusNum();
                    }, icon: Icon(Icons.chevron_right)),
                  ],
                ),
              ],
            ),
          )
        ],
      )
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
        padding: const EdgeInsets.symmetric(horizontal: 15,),
        margin: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                imgPath.startsWith('/') ? 'http:${imgPath}' : imgPath,
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
              maxLines: 2,
              textAlign: TextAlign.center,
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
