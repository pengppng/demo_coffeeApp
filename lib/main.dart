import 'package:flutter/material.dart';
import 'package:my_hospi/models/coffee_shop.dart';
import 'package:flutter/services.dart';
//import './screens/home.dart';
import 'pages/Homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
     SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      //create: (context) => CoffeeShop(),
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'NextC App', 
        home: Homepage(),
      ),

    );
  }
}