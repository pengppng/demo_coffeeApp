import 'package:flutter/material.dart';
import 'package:my_hospi/components/coffee_tile.dart';
import 'package:my_hospi/models/coffee.dart';
import 'package:my_hospi/models/coffee_shop.dart';
import 'package:provider/provider.dart';


class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void payNow(){   //pay button taped
  showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        title: Text("Order Completed"),//popup
      ));
  }
// remove item from cart
  void removeFromCart(Coffee coffee){
    Provider.of<CoffeeShop>(context,listen: false).removeItemToCart(coffee);
    //provider asset to coffeeshop

  
    
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(builder:(context, value, child) => SafeArea(
      child:Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Text('Cart',style: TextStyle(fontSize: 20),),//heading
            //list of cart items
            Expanded(
              child: ListView.builder(
                itemCount: value.userCart.length,
                itemBuilder: (context,index){
                // get individual cart item
                Coffee eachCoffee = value.userCart[index];
                // return coffee tile
                return CoffeeTile(
                  coffee: eachCoffee, 
                  onPressed: () => removeFromCart(eachCoffee), 
                  icon: Icons.delete, //icon delete don't show
                  //icon:Icons(Icons.delete),
                );
              }),
              ),
              //payment button
              GestureDetector(
                onTap: payNow,
                child: Container(
                  padding: const EdgeInsets.all(25),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(176, 166, 149, 1),
                    borderRadius: BorderRadius.circular(12)), 
                  child: const Center(child: 
                    Text("Pay Now", 
                    style: TextStyle(color: Colors.white), )),
                  
                  //icon:Icons.payment 
                ),
              ),
              
    ],
    ),
      ), 
  ),
    );
  }
}