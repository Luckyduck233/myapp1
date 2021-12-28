import 'package:flutter/material.dart';

/// 首页食物卡片item
class ItemCard extends StatelessWidget {
  final String? title, subtitle, imagesname;
  final void Function()? press;

  const ItemCard({
    Key? key,
    this.title,
    this.subtitle,
    this.imagesname,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ///This size provide you the total height and width of the screen
    ///获取当前屏幕的总宽度和高度
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 3),
              blurRadius: 10,
              color: Colors.black.withOpacity(.2),
            )
          ]),
      child: InkWell(
        onTap: press,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.amber.withOpacity(.3),
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  "http://10.1.53.82:8080/${imagesname}",
                  width: size.width * .15,
                ),
              ),
              Text(
                title!,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black),
              ),
              SizedBox(
                height: 5,
              ),
              Text(subtitle!)
            ],
          ),
        ),
      ),
    );
  }
}
