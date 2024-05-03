import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/component/stick_graph.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/cosmetic/provider/anlysis/compare_analysis_provider.dart';
import 'package:gproject/main.dart';

class TotalAIAnalysisScreen extends ConsumerWidget {
  const TotalAIAnalysisScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(compareAnalysisProvider);
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    '비교 분석 결과',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  AIAnalysis(comment: data.AI_total_description),
                  SizedBox(
                    height: ratio.height * 30,
                  ),
                ],
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '사용자 맞춤 점수',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: ratio.height * 20,
                  ),
                  Text(
                    '본 점수는 이미지들에 대한 사용자 데이터와 AI를 기반으로 측정된 점수입니다.',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: ratio.height * 20,
                  ),
                  StickGraph(
                    percent: data.ratio[0].toDouble(),
                    padding: 50,
                    color1: PColors.safe,
                    color2: PColors.halfDanger,
                    appearNum: false,
                  ),
                  Text(
                    '${data.ratio[0]}  / ${data.ratio[1]}',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: ratio.height * 20,
                  ),
                ],
              ),
            )
          ],
        ));
  }

  Container AIAnalysis({required String comment}) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 25,
      ),
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
            comment,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
