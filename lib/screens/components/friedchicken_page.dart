import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp_demo2/components/search_box.dart';
import 'package:myapp_demo2/screens/components/friedchicken_card.dart';
import 'package:myapp_demo2/screens/components/friedchicken_list.dart';

class FriedChickenPage extends StatefulWidget {
  const FriedChickenPage({Key? key}) : super(key: key);

  @override
  _FriedChickenPageState createState() => _FriedChickenPageState();
}

class _FriedChickenPageState extends State<FriedChickenPage> {
  @override
  Widget build(BuildContext context) {
    ///获取当前屏幕的总宽度和高度
    Size size = MediaQuery.of(context).size;
    return ListView(
      children: [
        Column(
          children: [
            SearchBox(onChanged: (value) {}),
            FriedChickenList(size: size),
            FriedChickenList(size: size),
            FriedChickenList(size: size)
          ],
        ),
      ],
    );
  }
}
