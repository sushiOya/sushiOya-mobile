import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sushioya/screens/restaurant_detail.dart';

import 'screens/home_screen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/restaurant_detail': (BuildContext context) => RestaurantDetail(),
      },
      color: Colors.red,
      title: 'Sushi Oya',
      home: HomeScreen(),
    );
  }
}


