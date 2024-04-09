import 'package:flutter/cupertino.dart';
import 'package:gproject/common/variable/color/color.dart';
import 'package:gproject/common/view/default_layout.dart';
import 'package:gproject/main.dart';

class ImageUpLoadScreen extends StatelessWidget {
  const ImageUpLoadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(child: 
       Column(
        children: [
          Container(
            width: 100,
            height: 200,
            child: Text('asdfasdf'),
          ),
          Container(
            width: ratio.width * 150,
            height: ratio.height * 150,
            decoration: BoxDecoration(
              color: PColors.mainColor,
              shape: BoxShape.circle,
            ),
            child: Text('asdf'),
          )
        ],
       )
    );
  }
}