import 'package:flutter/material.dart';
import 'package:myapp_demo2/screens/api/home_api.dart';


AppBar appBar(BuildContext context, {Widget? leading}) {
  return AppBar(
    backgroundColor: Colors.white,
    ///去掉appbar的阴影
    elevation: 0,
    centerTitle: true,
    leading: leading,
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
          onPressed: () {
            HomeApi.getHttp();
          },
          icon: const Icon(
            Icons.notifications_outlined,
            color: Colors.grey,
          ))
    ],
  );
}