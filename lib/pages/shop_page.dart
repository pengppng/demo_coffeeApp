import 'package:flutter/material.dart';
import 'package:my_hospi/components/coffee_tile.dart';
import 'package:my_hospi/models/coffee_shop.dart';
import 'package:provider/provider.dart';

import '../models/coffee.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //function add to cart
  void addToCart(Coffee coffee) {
    //add to cart by provider asset to coffeeshop
    Provider.of<CoffeeShop>(context, listen: false).addItemToCart(coffee);
    //let user know it add been sucessfully added
    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        title: Text("Complete Your order"),//popup
      ));

  }

  @override
  Widget build(BuildContext context) {
    // return Center(child: Text('SHOP'),);
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            //wrap column to padding
            children: [
              const Text(
                "How Would you like your coffee?",
                style: TextStyle(fontSize: 20),
              ),

              const SizedBox(
                height: 25,
              ),

              // list of coffe buy
              Expanded(
                child: ListView.builder(
                    itemCount: value.coffeeShop.length,
                    itemBuilder: (context, index) {
                      //get individual coffee
                      Coffee eachCoffee = value.coffeeShop[index];

                      //return the tile for this coffee
                      return CoffeeTile(
                        icon: Icons.add,
                        coffee: eachCoffee,
                        onPressed: () => addToCart(eachCoffee),
                      ); //ListTile(title: Text(eachCoffee.name),
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
