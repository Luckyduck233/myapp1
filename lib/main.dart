import 'dart:math';
import 'package:myapp_demo2/constants.dart';
import 'package:flutter/material.dart';
import 'package:myapp_demo2/screens/components/body.dart';
import 'package:myapp_demo2/screens/tabs.dart';

void main() {
  runApp(const MyApp());
  print('执行完毕');
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
      home: const Tabs(),
    );
  }
}
