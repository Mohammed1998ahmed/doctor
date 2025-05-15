import 'package:bloc/bloc.dart';
import 'package:doctor/core/widghts/blocService.dart';
import 'package:doctor/core/routing/app_Route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'app_root.dart';

void main() async {
  Bloc.observer = MyBlocObserver();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await Future.delayed(Duration(seconds: 2));
  FlutterNativeSplash.remove();
  runApp(App_Root(
    app_route: App_Route(),
  ));
}
