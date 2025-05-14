import 'package:bloc/bloc.dart';
import 'package:doctor/core/helpers/blocService.dart';
import 'package:doctor/core/routing/app_Route.dart';
import 'package:flutter/material.dart';

import 'app_root.dart';

void main() {
  Bloc.observer = MyBlocObserver();

  runApp(App_Root(
    app_route: App_Route(),
  ));
}
