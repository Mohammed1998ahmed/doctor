import 'package:flutter/material.dart';

class Space extends StatelessWidget {
  const Space({super.key, this.width, this.height});
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 0.0,
      height: height ?? 0,
    );
  }
}
