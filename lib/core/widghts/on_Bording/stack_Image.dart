import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/colors.dart';

class Stack_Image extends StatelessWidget {
  const Stack_Image({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 443.w,
          height: 443.h,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/Image.png"),
            fit: BoxFit.cover,
          )),
        ),
        Container(
          width: 375.w,
          height: 491.h,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/Group.png"),
            fit: BoxFit.cover,
          )),
        ),
        Positioned(
          top: 240.h,
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomCenter,
                width: 375.w,
                height: 239.h,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                      Colors.white,
                      Color(0xFFFFFF),
                    ])),
              ),
            ],
          ),
        ),
        Positioned(
          top: 380.h,
          left: 30.w,
          right: 30.w,
          child: Container(
            width: 315.w,
            height: 96.h,
            child: Text(
              "Best Doctor Appointment App",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors_App.main_Blue_Text,
                  fontSize: 32.dg,
                  fontWeight: FontWeight.w700),
            ),
          ),
        )
      ],
    );
  }
}
