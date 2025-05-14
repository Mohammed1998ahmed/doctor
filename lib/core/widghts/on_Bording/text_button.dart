import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/colors.dart';

class Text_Button extends StatelessWidget {
  const Text_Button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315.w,
      height: 26.h,
      child: Text(
        "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors_App.second_Bleak_Text,
            fontSize: 10.dg,
            fontWeight: FontWeight.w400),
      ),
    );
  }
}
