import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp_demo2/components/search_box.dart';
import 'package:myapp_demo2/components/app_bar.dart';
import 'package:myapp_demo2/screens/search/widget/friedchicken_card.dart';

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
    return Scaffold(
      appBar: appBar(context, leading: IconButton(onPressed: () {
        Navigator.pop(context);
      }, icon: Icon(Icons.chevron_left))),
      body: Column(
        children: [
          SearchBox(onChanged: (value) {}),
          /*FriedChickenList(size: size),
          FriedChickenList(size: size),
          FriedChickenList(smaize: size)*/
          Expanded(
            child: GridView.count(
              // physics: const AlwaysScrollableScrollPhysics(),
              crossAxisCount: 2,  // 一行显示几个
              childAspectRatio: 0.8,  // 卡片的长宽比
              mainAxisSpacing: 10,  // 横向边距
              crossAxisSpacing: 10,  // 上下边距
              shrinkWrap: true,
              children: List.generate(3, (index) {
                return FriedChickenCard(size: size);
              }),
            ),
          )
        ],
      ),
    );
  }
}
