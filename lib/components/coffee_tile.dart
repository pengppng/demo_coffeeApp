import 'package:flutter/material.dart';

import '../models/coffee.dart';

// ignore: must_be_immutable
class CoffeeTile extends StatelessWidget {
  final Coffee coffee;
  void Function()? onPressed;
  IconData? icon;
  CoffeeTile({super.key, required this.coffee, required this.onPressed, required IconData icon, });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: ListTile(
        title: Text(coffee.name),
        subtitle: Text(coffee.price),
        leading: Image.asset(coffee.imagePath),
        trailing: IconButton(
          // iconSize: 100,
          icon: Icon(Icons.circle_outlined),
          onPressed: onPressed,
        ),
      ),
    );
  }
}