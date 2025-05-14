import 'package:doctor/core/helpers/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/button_Click.dart';
import '../../../core/widghts/on_Bording/stack_Image.dart';
import '../../../core/widghts/on_Bording/text_button.dart';
import '../../../core/widghts/on_Bording/top_Widght_AppBar.dart';

class On_Bording extends StatelessWidget {
  const On_Bording({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Top_Widght(),
                Space(
                  height: 41.h,
                ),
                Stack_Image(),
                Text_Button(),
                Space(
                  height: 25.h,
                ),
                Button_Click()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
