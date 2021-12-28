import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:myapp_demo2/components/search_box.dart';
import 'package:myapp_demo2/constants.dart';
import 'package:myapp_demo2/model/home_model.dart';
import 'package:myapp_demo2/screens/api/home_api.dart';
import 'package:myapp_demo2/screens/home/state/home_state.dart';
import 'package:myapp_demo2/screens/home/widget/category_item.dart';
import 'package:myapp_demo2/screens/home/widget/item_card.dart';
import 'package:myapp_demo2/components/item_list.dart';
import 'package:myapp_demo2/screens/search/friedchicken_page.dart';
import 'package:provider/provider.dart';

import 'widget/category_list.dart';


/// 首页
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var state = Provider.of<HomeState>(context);
    return Material(
      child: Column(
        children: <Widget>[
          SearchBox(
            onChanged: (value) {},
          ),
          // CategoryList(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
              child: GridView.count(
                // physics: const AlwaysScrollableScrollPhysics(),
                crossAxisCount: 2,
                // 一行显示几个
                childAspectRatio: 0.85,
                // 卡片的长宽比
                mainAxisSpacing: 15,
                // 横向边距
                crossAxisSpacing: 10,
                // 上下边距
                shrinkWrap: true,
                children: List.generate(state.listFood.length, (index) {
                  print("当前的index >>> ${index}");
                  Food food = state.listFood[index];
                  return ItemCard(
                    title: '${food.name}',
                    subtitle: '${food.price}',
                    imagesname: '${food.picture}',
                    press: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return FriedChickenPage();
                      })
                      );
                    },
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

