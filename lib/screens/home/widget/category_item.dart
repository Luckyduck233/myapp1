import 'package:flutter/material.dart';


class CategoryItem extends StatelessWidget {
  final String? title;
  final void Function()? press;

  const CategoryItem({
    Key? key,
    this.title,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
        child: Column(
          children: [
            Text(
              title!,
              style: true
                  ? TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 14)
                  : TextStyle(fontSize: 12),
            ),

            if (true)
              Container(
                margin: EdgeInsets.symmetric(vertical: 8),
                height: 3,
                width: 25,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10),
                ),
              )
          ],
        ),
      ),
    );
  }
}
