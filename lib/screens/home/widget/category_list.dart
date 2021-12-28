import 'package:flutter/material.dart';
import 'package:myapp_demo2/screens/home/widget/category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CategoryItem(
            title: '炸     鸡',
            press: (){
              print('123');
            },
          ),
          CategoryItem(
            title: '奶     茶',
            press: (){
              const bool isActive=false;
              print(isActive);
              print('123');
            },
          ),
          CategoryItem(
            title: '甜     品',
            press: (){
              print('123');
            },
          ),
          CategoryItem(
            title: '其     它',
            press: () {},
          ),
        ],
      ),
    );
  }
}
