import 'package:flutter/material.dart';
import 'package:okay/Components/cart_Item.dart';
import 'package:okay/Models/cart.dart';
import 'package:okay/Models/watch.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) =>Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('This is my Cart',
           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),

           const SizedBox(height: 10,),

           Expanded(child: ListView.builder(
            itemCount: value.getUserCart().length,
            itemBuilder: (context, index) {
            //get Individual Watch
            Watch individualWatch = value.getUserCart() [index];
            //return the cart item
            return CartItem(watch: individualWatch);
           } 
          )
         )
        ],
      ),
    ));
  }
}