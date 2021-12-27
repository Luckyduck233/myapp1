import 'package:flutter/material.dart';
import 'package:myapp_demo2/screens/components/friedchicken_card.dart';

class FriedChickenList extends StatelessWidget {
  const FriedChickenList({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FriedChickenCard(size: size),

          FriedChickenCard(size: size)
        ],
      ),
    );
  }
}
