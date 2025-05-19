import 'package:doctor/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../feature/login/logic/cubit/login_cubit.dart';
import '../../feature/login/ui/login.dart';

class App_Route {
  Route generatorRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.on_Obrding_page:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => LoginCubit(),
                  child: Login(),
                ));

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text(
                      "Not Fount Page",
                      style: TextStyle(
                          fontSize: 18.dg,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber),
                    ),
                  ),
                ));
    }
  }
}
