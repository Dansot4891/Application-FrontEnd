import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/main.dart';

class AIAnalysisScreen extends StatelessWidget {
  const AIAnalysisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 30
      ),
      child: Column(
        children: [
          AIAnalysis(),
          SizedBox(height: ratio.height * 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GridViewBox(title: '찰떡궁합', right: true, bottom : true),
              GridViewBox(title: '추천해요', left: true, bottom: true),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GridViewBox(title: '꽤 괜찮아요', right: true, bottom: true, top: true),
              GridViewBox(title: '보통이에요', left: true, bottom: true, top: true),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GridViewBox(title: '글쎄요', right: true, top: true),
              GridViewBox(title: '다시\n생각해 보세요', left: true, top: true),
            ],
          ),
          Spacer(),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: PColors.mainColor,)
              )
            ),
            child: Center(
              child: Text('건성피부 타입', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),),
            ),
          ),
          SizedBox(height: ratio.height * 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('긍정 성분 수', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,),),
                    Text('충분', style: TextStyle(color: PColors.mainColor, fontSize: 18, fontWeight: FontWeight.w500,),),
                  ],
                ),
                Column(
                  children: [
                    Text('부정 성분 수', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,),),
                    Text('충분', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,),),
                  ],
                ),
                Column(
                  children: [
                    Text('주의 성분 수', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,),),
                    Text('충분', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,),),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: ratio.height * 40,)
        ],
      ),
    );
  }

  Container AIAnalysis() {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 20,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
              color: PColors.grey3.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 2,
              offset: Offset(1, 3)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'AI 분석',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라블라',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Container GridViewBox({
    required String title,
    bool left = false,
    bool right = false,
    bool top = false,
    bool bottom = false,
  }) {
    return Container(
      width: ratio.width * 180,
      height: ratio.height * 80,
      decoration: BoxDecoration(
          border: Border(
        left: left ? BorderSide(color: PColors.mainColor.withOpacity(0.4), width: 1) : BorderSide(color: Colors.white,),
        top: top ? BorderSide(color: PColors.mainColor.withOpacity(0.4), width: 1)  : BorderSide(color: Colors.white,),
        right: right ? BorderSide(color: PColors.mainColor.withOpacity(0.4), width: 1) : BorderSide(color: Colors.white,),
        bottom: bottom ? BorderSide(color: PColors.mainColor.withOpacity(0.4), width: 1) : BorderSide(color: Colors.white,),
      )),
      child: Center(
        child: Container(
          width: ratio.width * 140,
          height: ratio.height * 60,
          decoration: BoxDecoration(
              color: PColors.subColor2,
              borderRadius: BorderRadius.circular(16)),
          child: Center(
            child: Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,), textAlign: TextAlign.center,),
          ),
        ),
      ),
    );
  }
}
