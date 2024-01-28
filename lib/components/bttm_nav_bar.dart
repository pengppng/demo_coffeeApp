import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBtmNav extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBtmNav({super.key,required this.onTabChange,});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: GNav(
        onTabChange: (value) => onTabChange!(value),
        color: Colors.grey[400],
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.grey[700],
        tabBackgroundColor: Colors.grey.shade300,
        tabBorderRadius: 24,
        tabActiveBorder: Border.all(color: Colors.cyan),
        
        tabs: const [
        GButton(
          icon: Icons.home,
          text: 'shop',
        ),
        GButton(
          icon: Icons.shopping_bag_outlined,
          text: 'Cart',
        ),
        // GButton(
        //   icon: Icons.run,
        //   text: 'Healthy',
        // ),
      ],
      ),
    );
  }
}
