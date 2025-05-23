import 'package:doctor/core/theme/colors.dart';
import 'package:doctor/feature/login/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widghts/TextFormField_Style.dart';
import '../../../core/widghts/button_Click.dart';
import '../../../core/widghts/login_Page/soisel_Madel_Account.dart';
import '../../../core/widghts/space.dart';
import '../../../core/widghts/text_Widght.dart';

// ignore: must_be_immutable
class Login extends StatelessWidget {
  Login({super.key});
  TextEditingController controller_Email = TextEditingController();
  TextEditingController controller_PassWord = TextEditingController();
  bool? isChecked;
  bool isPassword = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        final cubit = LoginCubit.getObject(context);
        return Scaffold(
          appBar: AppBar(),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text_App(
                        name_Text: "Welcome Back",
                        FontSize: 24.dg,
                        fontWeight: FontWeight.w700,
                      ),
                      Space(
                        height: 8.h,
                      ),
                      Text_App(
                        name_Text:
                            "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
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
                        controller_TextField: controller_PassWord,
                        name: " Password",
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'الرجاء إدخال كلمة المرور';
                          }
                          String pattern =
                              r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$';
                          RegExp regex = RegExp(pattern);

                          if (!regex.hasMatch(value)) {
                            return 'يجب أن تحتوي كلمة المرور على 8 أحرف على الأقل، حرف صغير، حرف كبير، رقم، ورمز خاص';
                          }
                          if (value.length >= 8) {
                            isPassword = true;
                            // return null;
                          }
                          return null;
                        },
                      ),
                      Space(
                        height: 16.h,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.black,
                          ),
                          isPassword
                              ? Text(
                                  " PassWord Most 8 Char",
                                  style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                )
                              : Text(" PassWord Most 8 Char")
                        ],
                      ),
                      Space(
                        height: 16.h,
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: cubit.isChecked,
                            onChanged: (bool? value) {
                              cubit.Checkbox();
                            },
                          ),
                          Text_App(
                            name_Text: "Remember me",
                            color: Colors_App.Text_CheckBox_Color,
                            FontSize: 12.dg,
                            fontWeight: FontWeight.w400,
                          ),
                          Spacer(),
                          Text_App(
                            name_Text: "Forgot Password?",
                            color: Colors_App.main_Blue_Text,
                            FontSize: 12.dg,
                            fontWeight: FontWeight.w400,
                          )
                        ],
                      ),
                      Space(
                        height: 32.h,
                      ),
                      Button_Click(
                        onTap: () {
                          print("Login");

                          if (_formKey.currentState!.validate()) {}
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
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
