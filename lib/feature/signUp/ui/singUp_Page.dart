import 'package:doctor/core/theme/colors.dart';
import 'package:doctor/feature/signUp/logic/cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../core/widghts/TextFormField_Style.dart';
import '../../../core/widghts/button_Click.dart';
import '../../../core/widghts/login_Page/soisel_Madel_Account.dart';
import '../../../core/widghts/space.dart';
import '../../../core/widghts/text_Widght.dart';

// ignore: must_be_immutable
class SignUp extends StatelessWidget {
  SignUp({super.key});
  TextEditingController controller_Email = TextEditingController();
  TextEditingController controller_PassWord = TextEditingController();
  TextEditingController controller_YourNumber = TextEditingController();

  bool? isChecked;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        // final cubit = SignUpCubit.getObject(context);
        return Scaffold(
          appBar: AppBar(),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text_App(
                      name_Text: "Create Account",
                      FontSize: 24.dg,
                      fontWeight: FontWeight.w700,
                    ),
                    Space(
                      height: 8.h,
                    ),
                    Text_App(
                      name_Text:
                          "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
                      FontSize: 14.dg,
                      color: Colors_App.second_Bleak_Text,
                      fontWeight: FontWeight.w400,
                    ),
                    Space(
                      height: 36.h,
                    ),
                    TextFormField_Style(
                      controller_TextField: controller_Email,
                      name: " Email",
                      keyboardType: TextInputType.emailAddress,
                    ),
                    Space(
                      height: 16.h,
                    ),
                    TextFormField_Style(
                      controller_TextField: controller_Email,
                      name: " Password",
                      keyboardType: TextInputType.emailAddress,
                    ),
                    Space(
                      height: 16.h,
                    ),
                    IntlPhoneField(
                      decoration: InputDecoration(
                        labelText: 'Your number',
                        labelStyle: TextStyle(
                            color: Colors_App.TextField_Colors,
                            fontSize: 14.dg,
                            fontWeight: FontWeight.w500),
                        border: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors_App.borderSide_Color),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors_App.borderSide_Color),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                      initialCountryCode: 'IN',
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                    ),
                    // Container(
                    //   width: 405.w,
                    //   height: 60.h,
                    //   decoration: BoxDecoration(
                    //       border: Border.all(
                    //         color: Colors_App.borderSide_Color,
                    //       ),
                    //       borderRadius: BorderRadius.circular(16.0)),
                    // ),
                    // ******************************************************* //
                    Space(
                      height: 32.h,
                    ),
                    Button_Click(
                      onTap: () {
                        print("Login");
                      },
                      name: "Login",
                    ),
                    Space(
                      height: 46.h,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 118.w,
                          height: 1.h,
                          color: Colors_App.line_Colors,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 1.5.w),
                          child: Text_App(
                            name_Text: "Or sign in with",
                            color: Colors_App.Text_CheckBox_Color,
                            FontSize: 12.dg,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Container(
                          width: 117.w,
                          height: 1.h,
                          color: Colors_App.line_Colors,
                        ),
                      ],
                    ),
                    Space(
                      height: 32.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        soisel_Madel_Account(
                          image: "assets/google.png",
                        ),
                        Space(
                          width: 32.w,
                        ),
                        soisel_Madel_Account(
                          image: "assets/facebook.png",
                        ),
                        Space(
                          width: 32.w,
                        ),
                        soisel_Madel_Account(
                          image: "assets/ios.png",
                        ),
                      ],
                    ),
                    Space(
                      height: 32.h,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(fontSize: 20.0, color: Colors.black),
                        children: [
                          TextSpan(
                              text: 'By logging, you agree to our ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors_App.Text_CheckBox_Color,
                                  fontSize: 11.dg)),
                          TextSpan(
                              text: 'Terms & Conditions',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 11.dg)),
                          TextSpan(
                              text: ' and ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors_App.Text_CheckBox_Color,
                                  fontSize: 11.dg)),
                          TextSpan(
                              text: ' PrivacyPolicy',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 11.dg)),
                        ],
                      ),
                    ),
                    Space(
                      height: 15.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account yet?",
                            style: TextStyle(
                                color: Colors.black, fontSize: 11.dg)),
                        GestureDetector(
                          onTap: () {},
                          child: Text("Sign Up",
                              style: TextStyle(
                                  color: Colors_App.main_Blue,
                                  fontSize: 11.dg)),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
