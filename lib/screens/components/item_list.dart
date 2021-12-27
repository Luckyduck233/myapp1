import 'package:flutter/material.dart';
import 'package:myapp_demo2/screens/components/friedchicken_page.dart';
import 'package:myapp_demo2/screens/components/item_card.dart';
import 'package:myapp_demo2/constants.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 15),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ItemCard(
            title: '炸鸡',
            subtitle: '汉堡',
            imagesname: 'images/汉堡.png',
            press: () {
              pagelevel = 2;
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return FriedChickenPage();
              }));
            },
          ),
          ItemCard(
            title: '奶茶',
            subtitle: '水果茶',
            imagesname: 'images/汉堡.png',
            press: () {
              print('123');
            },
          ),
          ItemCard(
            title: '甜品',
            subtitle: '冰淇淋',
            imagesname: 'images/汉堡.png',
            press: () {
              print('123');
            },
          ),
        ],
      ),
    );
  }
}
