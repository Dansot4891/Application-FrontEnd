import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/cosmetic/model/cosmetics/cosmetic_model.dart';
import 'package:gproject/cosmetic/model/cosmetics/cosmetic_purchase.dart';

final CosmeticProvider = StateNotifierProvider<CosmeticNotifier, List<CosmeticModel>>((ref) => CosmeticNotifier());

class CosmeticNotifier extends StateNotifier<List<CosmeticModel>> {
  CosmeticNotifier() : super([]);

  Future<void> fetchData() async {
    state = [
      CosmeticModel(0, '레이어 물톡스 램프1', '', 37000, [
        CosmeticPurchaseModel(0, '쿠팡', 37000, 'www.naver.com'),
        CosmeticPurchaseModel(1, '11번가', 38000, 'www.google.com'),
        CosmeticPurchaseModel(2, '화장품좋아', 39000, 'www.naver.com'),
        CosmeticPurchaseModel(3, '싼구매처', 40000, 'www.naver.com'),
      ]),
      CosmeticModel(1, '레이어 물톡스 램프2', '', 37001, [
        CosmeticPurchaseModel(0, '쿠팡', 37000, 'www.naver.com'),
        CosmeticPurchaseModel(1, '11번가', 38000, 'www.google.com'),
        CosmeticPurchaseModel(2, '화장품좋아', 39000, 'www.naver.com'),
        CosmeticPurchaseModel(3, '싼구매처', 40000, 'www.naver.com'),
      ]),
      CosmeticModel(2, '레이어 물톡스 램프3', '', 37002, [CosmeticPurchaseModel(0, '쿠팡', 37000, 'www.naver.com'),
        CosmeticPurchaseModel(1, '11번가', 38000, 'www.google.com'),
        CosmeticPurchaseModel(2, '화장품좋아', 39000, 'www.naver.com'),
        CosmeticPurchaseModel(3, '싼구매처', 40000, 'www.naver.com'),]),
      CosmeticModel(3, '레이어 물톡스 램프4', '', 37003, [CosmeticPurchaseModel(0, '쿠팡', 37000, 'www.naver.com'),
        CosmeticPurchaseModel(1, '11번가', 38000, 'www.google.com'),
        CosmeticPurchaseModel(2, '화장품좋아', 39000, 'www.naver.com'),
        CosmeticPurchaseModel(3, '싼구매처', 40000, 'www.naver.com'),]),
      CosmeticModel(4, '레이어 물톡스 램프5', '', 37004, [CosmeticPurchaseModel(0, '쿠팡', 37000, 'www.naver.com'),
        CosmeticPurchaseModel(1, '11번가', 38000, 'www.google.com'),
        CosmeticPurchaseModel(2, '화장품좋아', 39000, 'www.naver.com'),
        CosmeticPurchaseModel(3, '싼구매처', 40000, 'www.naver.com'),]),
      CosmeticModel(5, '레이어 물톡스 램프6', '', 37005, [CosmeticPurchaseModel(0, '쿠팡', 37000, 'www.naver.com'),
        CosmeticPurchaseModel(1, '11번가', 38000, 'www.google.com'),
        CosmeticPurchaseModel(2, '화장품좋아', 39000, 'www.naver.com'),
        CosmeticPurchaseModel(3, '싼구매처', 40000, 'www.naver.com'),]),
      CosmeticModel(6, '레이어 물톡스 램프7', '', 37006, [CosmeticPurchaseModel(0, '쿠팡', 37000, 'www.naver.com'),
        CosmeticPurchaseModel(1, '11번가', 38000, 'www.google.com'),
        CosmeticPurchaseModel(2, '화장품좋아', 39000, 'www.naver.com'),
        CosmeticPurchaseModel(3, '싼구매처', 40000, 'www.naver.com'),]),
      CosmeticModel(7, '레이어 물톡스 램프8', '', 37007, [CosmeticPurchaseModel(0, '쿠팡', 37000, 'www.naver.com'),
        CosmeticPurchaseModel(1, '11번가', 38000, 'www.google.com'),
        CosmeticPurchaseModel(2, '화장품좋아', 39000, 'www.naver.com'),
        CosmeticPurchaseModel(3, '싼구매처', 40000, 'www.naver.com'),]),
      CosmeticModel(8, '레이어 물톡스 램프9', '', 37008, [CosmeticPurchaseModel(0, '쿠팡', 37000, 'www.naver.com'),
        CosmeticPurchaseModel(1, '11번가', 38000, 'www.google.com'),
        CosmeticPurchaseModel(2, '화장품좋아', 39000, 'www.naver.com'),
        CosmeticPurchaseModel(3, '싼구매처', 40000, 'www.naver.com'),]),
      CosmeticModel(9, '레이어 물톡스 램프10', '', 37009, [CosmeticPurchaseModel(0, '쿠팡', 37000, 'www.naver.com'),
        CosmeticPurchaseModel(1, '11번가', 38000, 'www.google.com'),
        CosmeticPurchaseModel(2, '화장품좋아', 39000, 'www.naver.com'),
        CosmeticPurchaseModel(3, '싼구매처', 40000, 'www.naver.com'),]),
    ];
  }

  CosmeticModel getDetail(int id){
    CosmeticModel data = CosmeticModel(-1, '.', '.', 10, []);
    for(int i = 0;i<state.length; i++){
      if(state[i].id == id){
        data = state[i];
        return data;
      }
    }
    return data;
  }
}
