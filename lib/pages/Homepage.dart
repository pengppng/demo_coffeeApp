import 'package:flutter/material.dart';
import 'package:my_hospi/components/bttm_nav_bar.dart';
import 'package:my_hospi/pages/cart_page.dart';
import 'package:my_hospi/pages/shop_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  //navigate bottom bar
  int _selectedIndex = 0 ;
  void NavigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
} 

//pages
  final List<Widget> _pages = [
    ShopPage(), //shop pages
    CartPage(),//cart pages
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.limeAccent[300], //backgroundColor: backgroundColor,
    bottomNavigationBar: MyBtmNav(
      onTabChange: (index) => NavigateBottomBar(index) ,
    ),
     body: _pages[_selectedIndex],
    );
  }
}

