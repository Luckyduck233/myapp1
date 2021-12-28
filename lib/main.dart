import 'package:flutter/material.dart';
import 'package:myapp_demo2/root_page.dart';
import 'package:myapp_demo2/screens/home/state/home_state.dart';
import 'package:provider/provider.dart';

import 'screens/shopping_car/state/shopping_car_state.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeState()),
        ChangeNotifierProvider(create: (_) => ShoppingCarState()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: Colors.white,
        textTheme: const TextTheme(
            bodyText1: TextStyle(color: Colors.black45),
            bodyText2: TextStyle(color: Colors.grey)),
      ),
      debugShowCheckedModeBanner: false,
      home: const RootPage(),
    );
  }
}
