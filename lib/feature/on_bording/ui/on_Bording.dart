import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widghts/button_Click.dart';
import 'widght/stack_Image.dart';
import 'widght/text_button.dart';
import 'widght/top_Widght_AppBar.dart';
import '../../../core/widghts/space.dart';

// Clean Code on Bording
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
