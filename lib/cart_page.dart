import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'cart_provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart =
        Provider.of<CartProvider>(context); //provider kaaga use pandrom

    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cart"),
        backgroundColor: Colors.cyan,
      ),
      body: cart.cartItems.isEmpty
          ? const Center(child: Text("Your cart is empty."))
          : ListView.builder(
              itemCount:
                  cart.cartItems.length, //cart items  comes from provider.
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    leading: const Icon(Icons.shopping_bag),
                    title: Text(cart.cartItems[index]),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        cart.removeItem(index);
                      },
                    ),
                  ),
                );
              },
            ),
    );
  }
}
