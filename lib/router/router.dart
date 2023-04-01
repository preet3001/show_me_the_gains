import 'package:flutter/material.dart';
import 'package:show_me_the_gains/modules/splash/views/splash_view.dart';
import 'package:show_me_the_gains/router/routes.dart' as routes;

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case routes.splashRoute:
      return MaterialPageRoute(builder: (_) => const SplashView());
    default:
      return MaterialPageRoute(builder: (_) => ErrorWidget('No Route Found'));
  }
}
