import 'package:flutter/material.dart';

import '../../utils/app_color.dart';

class CommonCircleWidget extends StatelessWidget {
  const CommonCircleWidget({
    super.key,
    required this.height,
    required this.width,
    required this.title,
    this.isAssetImage = false,
    this.radius = 27,
    this.maxLines = 1,
    required this.imageUrlOrPath,
  });

  final double height;
  final double width;
  final double radius;
  final String title;
  final String imageUrlOrPath;
  final bool isAssetImage;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (isAssetImage == true)
          CircleAvatar(
            radius: radius,
            backgroundColor: AppColor.grey,
            backgroundImage: AssetImage(
              imageUrlOrPath.toString(),
            ),
          ),
        if (isAssetImage == false)
          Offstage(
            offstage: false,
            child: CircleAvatar(
              radius: radius,
              backgroundColor: AppColor.grey,
              backgroundImage: NetworkImage(
                imageUrlOrPath.toString(),
              ),
            ),
          ),
        SizedBox(
          height: height * 0.01,
        ),
        Expanded(
          child: Text(
            title.toString(),
            style: TextStyle(
              color: AppColor.white08,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
            maxLines: maxLines,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
