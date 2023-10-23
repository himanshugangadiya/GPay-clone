import 'package:flutter/material.dart ';

class CommonPayWidget extends StatelessWidget {
  const CommonPayWidget({
    super.key,
    required this.width,
    required this.height,
    required this.icon,
  });

  final double width;
  final double height;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      icon,
      height: height * 0.075,
      fit: BoxFit.contain,
    );
  }
}
