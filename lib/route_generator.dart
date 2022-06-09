import 'package:flutter/material.dart';
import 'package:technical_test/src/Pages/home_page.dart';
import 'package:technical_test/src/Pages/post_page.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    // final args = settings.arguments;
    switch (settings.name) {
      case '/Debug':
        return MaterialPageRoute(builder: (_) => const PostPage());
      case '/Splash':
        return MaterialPageRoute(builder: (_) => const HomePage());
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return MaterialPageRoute(builder: (_) => const Scaffold(body: SafeArea(child: Text('Route Error'))));
    }
  }
}
