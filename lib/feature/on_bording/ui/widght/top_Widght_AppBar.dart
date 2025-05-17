import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/colors.dart';

class Top_Widght extends StatelessWidget {
  const Top_Widght({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 38.w,
            height: 38.h,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/Frame.png"))),
          ),
          Container(
            child: Text(
              "Docdoc",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.dg,
                  color: Colors_App.main_Bleak_Text),
            ),
          )
        ],
      ),
    );
  }
}
