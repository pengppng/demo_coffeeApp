import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    // return Center(child: Text('SHOP'),);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(//wrap column to padding
          children: [
            const Text(
              "How Would you like your coffee?",
              style: TextStyle(fontSize: 20),
            ),

            const SizedBox(height: 25,),
            
            // list of coffe buy
            Expanded(
              child: ListView.builder(itemBuilder: (context, index){
                //get individual coffee
                
                //return the tile for this coffee
            }),
            ),
          ],
        ),
      ),
    );
  }
}
