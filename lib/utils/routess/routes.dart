import 'package:flutter/material.dart';
import 'package:mvvmproject/utils/routess/routes_name.dart';
import 'package:mvvmproject/view/home_screen.dart';
import 'package:mvvmproject/view/login_screen.dart';

class Routes {
  static MaterialPageRoute generateRoutes(RouteSettings settings) {
    final argum = settings.arguments;
    switch (settings.name) {
      case Routesname.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen());
      case Routesname.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginScreen());
      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: const Text('no routes defined'),
            ),
          );
        });
    }
  }
}
