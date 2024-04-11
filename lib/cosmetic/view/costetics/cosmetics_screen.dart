import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/common/variable/image_path.dart';
import 'package:gproject/common/view/default_layout.dart';
import 'package:gproject/cosmetic/view/costetics/cosmetics_info_screen.dart';
import 'package:gproject/main.dart';

class CosmeticsScreen extends StatelessWidget {
  const CosmeticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      isBoard: true,
      child: GridView.count(
        childAspectRatio: (MediaQuery.of(context).size.width / 2) / (MediaQuery.of(context).size.height / 3),
        crossAxisCount: 2,
        shrinkWrap: true,
        children: [
          gridViewBox(name: '레이어 물톡스 앰프', price: 37000, func: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return CosmeticsInfoScreen();
            },),);
          }),
          gridViewBox(name: '레이어 물톡스 앰프', price: 37000, func: (){}),
          gridViewBox(name: '레이어 물톡스 앰프', price: 37000, func: (){}),
          gridViewBox(name: '레이어 물톡스 앰프', price: 37000, func: (){}),
          gridViewBox(name: '레이어 물톡스 앰프', price: 37000, func: (){}),
          gridViewBox(name: '레이어 물톡스 앰프', price: 37000, func: (){}),
          gridViewBox(name: '레이어 물톡스 앰프', price: 37000, func: (){}),
          gridViewBox(name: '레이어 물톡스 앰프', price: 37000, func: (){}),
          gridViewBox(name: '레이어 물톡스 앰프', price: 37000, func: (){}),
        ],
      ),
    );
  }
  
  GestureDetector gridViewBox({
    required String name,
    required int price,
    required VoidCallback func,
  }){
    return GestureDetector(
      onTap: func,
      child: Container(
            margin: const EdgeInsets.only(top: 50),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    ImgPath.sample,
                    width: ratio.width * 130,
                    height: ratio.height * 170,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
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
