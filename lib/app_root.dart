import 'package:doctor/core/routing/app_Route.dart';
import 'package:doctor/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'feature/signUp/logic/cubit/sign_up_cubit.dart';

class App_Root extends StatelessWidget {
  const App_Root({super.key, required this.app_route});
  final App_Route app_route;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(380, 760),
      minTextAdapt: true,
      splitScreenMode: true,
      child: BlocProvider(
        create: (context) => SignUpCubit(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: Colors.white,
          ),
          // home: child,
          initialRoute: Routes.on_Obrding_page,
          onGenerateRoute: app_route.generatorRoute,
        ),
      ),
    );
  }
}
