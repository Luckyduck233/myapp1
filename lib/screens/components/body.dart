import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:myapp_demo2/components/search_box.dart';
import 'package:myapp_demo2/screens/components/category_item.dart';
import 'package:myapp_demo2/screens/components/category_list.dart';
import 'package:myapp_demo2/screens/components/item_card.dart';
import 'package:myapp_demo2/screens/components/item_list.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SearchBox(
          onChanged: (value) {},
        ),
        CategoryList(),
        ItemList(),

      ],
    );
  }
}

