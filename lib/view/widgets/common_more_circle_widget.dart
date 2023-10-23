import 'package:flutter/material.dart';

import '../../utils/app_color.dart';

class CommonMoreCircleWidget extends StatelessWidget {
  const CommonMoreCircleWidget({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 27,
          backgroundColor: AppColor.white05,
          child: CircleAvatar(
            radius: 32,
            backgroundColor: AppColor.grey,
            child: Icon(
              Icons.keyboard_arrow_down,
              color: AppColor.blue,
              size: 30,
            ),
          ),
        ),
        SizedBox(
          height: height * 0.01,
        ),
        Text(
          "More",
          style: TextStyle(
            fontSize: 15,
            color: AppColor.white08,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
