import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Button_Click extends StatelessWidget {
  const Button_Click({
    super.key,
    this.name,
    this.onTap,
    this.color_Box,
    this.radius,
  });
  final String? name;
  final void Function()? onTap;
  final Color? color_Box;
  final double? radius;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? null,
      child: Container(
        width: 327.w,
        height: 52.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color_Box ?? Color(0xff247CFF),
          borderRadius: BorderRadius.circular(radius ?? 16.0),
        ),
        child: Text(
          name ?? "Get Started",
          style: TextStyle(
              fontSize: 16.dg,
              fontWeight: FontWeight.w600,
              color: Colors.white),
        ),
      ),
    );
  }
}
