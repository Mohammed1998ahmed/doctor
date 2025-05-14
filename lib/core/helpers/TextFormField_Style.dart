import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theme/colors.dart';

class TextFormField_Style extends StatelessWidget {
  const TextFormField_Style({
    super.key,
    required this.controller_TextField,
    required this.name,
    this.fillColor,
    this.Border_Side_Color,
    this.Border_Side_width,
    this.hintColor,
    this.hintFontWeight,
    this.hintfontSize,
    this.keyboardType,
  });

  final TextEditingController controller_TextField;
  final String name;
  final Color? fillColor;
  final Color? Border_Side_Color;
  final double? Border_Side_width;
  final Color? hintColor;
  final FontWeight? hintFontWeight;
  final double? hintfontSize;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller_TextField,
      keyboardType: keyboardType ?? TextInputType.name,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: BorderSide(
                  color: Border_Side_Color ?? Colors_App.borderSide_Color,
                  width: Border_Side_width ?? 1.0)),
          filled: true,
          fillColor: fillColor ?? Colors_App.main_Text_Field,
          hintText: name,
          hintStyle: TextStyle(
              color: hintColor ?? Colors_App.TextField_Colors,
              fontWeight: hintFontWeight ?? FontWeight.w500,
              fontSize: hintfontSize ?? 14.dg)),
    );
  }
}
