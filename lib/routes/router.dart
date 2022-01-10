import 'package:flutter/material.dart';
import 'package:ui_challenge/pages/ikea/index.dart';
import 'package:ui_challenge/pages/index.dart';
import 'package:ui_challenge/pages/travel-trip/detail.dart';
import 'package:ui_challenge/root.dart';
import 'package:ui_challenge/routes/route_name.dart';

class Router {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case root:
        return MaterialPageRoute(builder: (_) => const Root());
      case mainRoute:
        return MaterialPageRoute(builder: (_) => const MainPage());
      case travelDetailRoute:
        return MaterialPageRoute(builder: (_) => const DetailTrip());

      // IKEA
      case ikeaHomeRoute:
        return MaterialPageRoute(builder: (_) => const IkeaMainPage());
      default:
        return null;
    }
  }
}
