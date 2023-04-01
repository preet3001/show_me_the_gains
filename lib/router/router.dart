import 'package:flutter/material.dart';
import 'package:show_me_the_gains/modules/login/views/login_view.dart';
import 'package:show_me_the_gains/modules/splash/views/splash_view.dart';
import 'package:show_me_the_gains/router/routes.dart' as routes;

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case routes.splashRoute:
      return AppRoute(child: const SplashView());
    case routes.loginRoute:
      return AppRoute(child: LoginView());
    default:
      return AppRoute(child: ErrorWidget('No Route Found'));
  }
}

AppRoute({required Widget child}) => MaterialPageRoute(builder: (_) => child);
