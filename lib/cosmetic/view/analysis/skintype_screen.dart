import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/main.dart';

class SkinTypeScreen extends StatelessWidget {
  const SkinTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    CustomStickGraph(
                      goodNum: 18,
                      badNum: 2,
                      title: '수분 흡수 증진',
                    ),
                    CustomStickGraph(
                      goodNum: 31,
                      badNum: 5,
                      title: '각질 제거',
                    ),
                    CustomStickGraph(
                      goodNum: 11,
                      badNum: 7,
                      title: '지속 시간 증가',
                    ),
                    CustomStickGraph(
                      goodNum: 21,
                      badNum: 0,
                      title: '미백',
                    ),
                    CustomStickGraph(
                      goodNum: 32,
                      badNum: 1,
                      title: '블라블라',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  bottom: 15,
                ),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    children: [
                      TextSpan(
                        text: '지성피부',
                        style: TextStyle(
                          fontSize: 16,
                          color: PColors.mainColor,
                        ),
                      ),
                      TextSpan(text: '에게 효과가 있습니다.'),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 1,
              ),
            ],
          ),
        ),
        SliverBox(skinType: '지성 피부', list: []),
        SliverBox(skinType: '민감성 피부', list: [])
      ],
    );
  }

  Padding CustomStickGraph({
    required int goodNum,
    required int badNum,
    required String title,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                children: [
                  Text(
                    '${goodNum}개',
                    style: TextStyle(
                      fontSize: 14,
                      color: PColors.mainColor,
                    ),
                  ),
                  Icon(
                    Icons.sentiment_very_satisfied,
                    size: 40,
                    color: PColors.mainColor,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: ratio.height * 5 * goodNum,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: PColors.mainColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(
                    '${badNum}개',
                    style: TextStyle(
                      fontSize: 14,
                      color: PColors.bad,
                    ),
                  ),
                  Icon(
                    Icons.sentiment_very_dissatisfied,
                    size: 40,
                    color: PColors.bad,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: ratio.height * 5 * badNum,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: PColors.bad,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Row SkinTypeRow(
    String name,
    String func,
    bool isgood,
  ) {
    return Row(
      children: [
        Icon(
          isgood ? Icons.sentiment_very_satisfied : Icons.sentiment_very_dissatisfied,
          size: 40,
          color: isgood ? PColors.mainColor : PColors.bad
        ),
        SizedBox(
          width: ratio.width * 10,
        ),
        Text(
          name,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        SizedBox(
          width: ratio.width * 15,
        ),
        Text(
          '|',
          style: TextStyle(
            fontSize: 16,
            color: PColors.grey3.withOpacity(0.5),
          ),
        ),
        SizedBox(
          width: ratio.width * 15,
        ),
        Text(
          func,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        SizedBox(
          width: ratio.width * 15,
        ),
      ],
    );
  }

  SliverPadding SliverBox({
    required String skinType,
    required list,
  }) {
    return SliverPadding(
      padding: const EdgeInsets.only(left: 30, top: 30),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            if(index == 0)
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(
                  '지성 피부',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: ratio.height * 15,
                ),],
            );
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SkinTypeRow('정제수', '습윤, 예민현상 차단, 습윤, 습윤, 예민현상 차단,', true),),
            );
          },
          childCount: 10,
        ),
      ),
    );
  }
}
