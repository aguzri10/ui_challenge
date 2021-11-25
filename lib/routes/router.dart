import 'package:flutter/material.dart';
import 'package:ui_challenge/pages/index.dart';
import 'package:ui_challenge/root.dart';
import 'package:ui_challenge/routes/route_name.dart';

class Router {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case root:
        return MaterialPageRoute(builder: (_) => const Root());
      case mainRoute:
        return MaterialPageRoute(builder: (_) => const MainPage());
      default:
        return null;
    }
  }
}
