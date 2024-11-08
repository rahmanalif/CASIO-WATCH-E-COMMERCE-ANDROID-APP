import 'package:flutter/material.dart';
import 'package:okay/Models/cart.dart';
import 'package:okay/Models/watch.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  final Watch watch;  // Make this final
  const CartItem({super.key, required this.watch});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    // Remove item from cart
    void removeItemFromCart() {
      Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.watch);
    }

    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.watch.imagePath),
        title: Text(widget.watch.name),
        subtitle: Text('\$${widget.watch.price}'),  // Fix for displaying price correctly
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: removeItemFromCart,
        ),
      ),
    );
  }
}
