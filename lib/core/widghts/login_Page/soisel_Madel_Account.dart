import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/colors.dart';

class soisel_Madel_Account extends StatelessWidget {
  const soisel_Madel_Account({
    super.key,
    this.image,
  });
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46.w,
      height: 46.h,
      decoration: BoxDecoration(
          color: Colors_App.CircularAvatar,
          borderRadius: BorderRadius.circular(100)),
      child: Image.asset(image ?? "assets/google.png"),
    );
  }
}
