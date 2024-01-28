import 'package:flutter/material.dart';
import 'package:my_hospi/models/coffee_shop.dart';
import 'package:provider/provider.dart';
import 'pages/Homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CoffeeShop(),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Homepage(),
      ),

    );
  }
}