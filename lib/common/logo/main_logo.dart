import 'package:flutter/material.dart';
import 'package:gproject/common/variable/image_path/image_path.dart';

class MainLogo extends StatelessWidget {
  final bool appbar;
  const MainLogo({
    this.appbar = false,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: appbar ? 140 : 205,
      child: Stack(
        children: [
          Text(
            'Beauty Guard',
            style: TextStyle(
              fontSize: appbar ? 20 : 30,
              fontWeight: FontWeight.w600
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              ImgPath.mainlogo,
            ),
          )
        ],
      ),
    );
  }
}
