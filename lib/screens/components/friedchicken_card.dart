import 'package:flutter/material.dart';

class FriedChickenCard extends StatelessWidget {
  const FriedChickenCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * .45,
      height: size.height * .3,
      decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 3),
                color: Color.fromRGBO(0, 0, 0, .1),
                blurRadius: 10)
          ],
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Material(

        ///使Material自带颜色透明
          color: Colors.transparent,
          child: InkWell(
            borderRadius:const BorderRadius.all(Radius.circular(12)),
            onTap: () {},
            child: Column(
              children: [
                Container(
                  height: size.height * .18,
                  width: size.width * .45,
                  decoration: const BoxDecoration(
                      color: Colors.black12,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12))),
                  child: const Center(
                    child: Text(
                      'img',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Text(
                            '香辣汉堡',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                      const Text('123',style: TextStyle(color: Colors.orange),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('附近有人在喝'),
                          Container(
                            height: 24,
                            width: 24,
                            decoration: const BoxDecoration(
                              color: Colors.orange,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(Icons.add,color: Colors.white,),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}