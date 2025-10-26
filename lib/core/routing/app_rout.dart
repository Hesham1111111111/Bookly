import 'package:bookely/featuers/home_books/ui/views/home_sceen.dart';
import 'package:bookely/featuers/home_books/ui/views/widget/detailles_books/deteles_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRouter(RouteSettings settings) {
    switch (settings.name) {
      case'HomeScreen':
        return MaterialPageRoute(builder: (_)=>HomeScreen());
        case'DetelesScreen':
        return MaterialPageRoute(builder: (_)=>DetelesScreen());
    }
  }
}
