import 'package:doctor/core/theme/colors.dart';
import 'package:flutter/material.dart';

class Text_App extends StatelessWidget {
  const Text_App(
      {super.key, this.name_Text, this.color, this.FontSize, this.fontWeight});
  final String? name_Text;
  final Color? color;
  final double? FontSize;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      name_Text ?? "data",
      style: TextStyle(
          color: color ?? Colors_App.main_Blue,
          fontSize: FontSize,
          fontWeight: fontWeight),
    );
  }
}
