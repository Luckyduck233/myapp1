import 'package:flutter/material.dart';


AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    ///去掉appbar的阴影
    elevation: 0,
    centerTitle: true,
    leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
    title: RichText(
        text: TextSpan(
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(fontWeight: FontWeight.bold,fontSize: 18),
            children: const [
              TextSpan(text: 'Punk', style: TextStyle(color: Colors.grey)),
              TextSpan(text: 'Food', style: TextStyle(color: Colors.orange)),
            ])),
    actions: <Widget>[
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_outlined,
            color: Colors.grey,
          ))
    ],
  );
}