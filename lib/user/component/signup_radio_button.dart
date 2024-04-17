import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gproject/common/variable/color.dart';
import 'package:gproject/user/provider/signup_provider.dart';

class SignupRadioButtonRow extends ConsumerWidget {
  final String type;
  const SignupRadioButtonRow({
    required this.type,
    super.key,});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return type == '성별' ? Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SignupRadioButton(title: '남자', checked: ref.watch(genderButtonProvider)[0], func: (){ref.read(genderButtonProvider.notifier).changeValue(0);}),
        SignupRadioButton(title: '여자', checked: ref.watch(genderButtonProvider)[1], func: (){ref.read(genderButtonProvider.notifier).changeValue(1);}),
        SizedBox(),
      ],
    ) : type == '피부타입' ? Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SignupRadioButton(title: '건성', checked: ref.watch(typeButtonProvider)[0], func: (){ref.read(typeButtonProvider.notifier).changeValue(0);}),
        SignupRadioButton(title: '지성', checked: ref.watch(typeButtonProvider)[1], func: (){ref.read(typeButtonProvider.notifier).changeValue(1);}),
        SignupRadioButton(title: '민감성', checked: ref.watch(typeButtonProvider)[2], func: (){ref.read(typeButtonProvider.notifier).changeValue(2);}),
      ],
    ) :Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: SignupRadioButton(title: '해당없음', checked: ref.watch(worryButtonProvider)[0], func: (){ref.read(worryButtonProvider.notifier).setNull();})),
            Expanded(child: SignupRadioButton(title: '아토피', isNull: ref.watch(worryButtonProvider)[0], checked: ref.watch(worryButtonProvider)[1], func: (){ref.read(worryButtonProvider.notifier).changeValue(1);})),
            Expanded(child: SignupRadioButton(title: '여드름', isNull: ref.watch(worryButtonProvider)[0], checked: ref.watch(worryButtonProvider)[2], func: (){ref.read(worryButtonProvider.notifier).changeValue(2);})),
          ],
        ),
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: SignupRadioButton(title: '각질', isNull: ref.watch(worryButtonProvider)[0], checked: ref.watch(worryButtonProvider)[3], func: (){ref.read(worryButtonProvider.notifier).changeValue(3);})),
            Expanded(child: SignupRadioButton(title: '미백잡티', isNull: ref.watch(worryButtonProvider)[0], checked: ref.watch(worryButtonProvider)[4], func: (){ref.read(worryButtonProvider.notifier).changeValue(4);})),
            Expanded(child: SignupRadioButton(title: '주름탄력', isNull: ref.watch(worryButtonProvider)[0], checked: ref.watch(worryButtonProvider)[5], func: (){ref.read(worryButtonProvider.notifier).changeValue(5);})),
          ],
        ),
      ],
    );
  }
}

class SignupRadioButton extends StatelessWidget {
  final String title;
  bool checked;
  bool isNull;
  final VoidCallback func;
  SignupRadioButton({
    required this.title,
    required this.checked,
    required this.func,
    this.isNull = false,
    super.key,});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: !isNull ? func : (){},
          child: Container(
            margin: EdgeInsets.only(right: 10),
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                color: checked ? PColors.mainColor : Colors.white,
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  color: PColors.mainColor,
                  width: 2,
                )),
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
