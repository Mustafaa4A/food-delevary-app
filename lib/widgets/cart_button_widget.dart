import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CartButtonWidget extends StatelessWidget {
  const CartButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          boxShadow: const [
            BoxShadow(
                color: Colors.white,
                spreadRadius: 0.2,
                blurRadius: 1,
                offset: Offset(0, 1))
          ]),
      child: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'cart');
        },
        child: Icon(
          CupertinoIcons.cart,
          size: 28,
        ),
        backgroundColor: const Color.fromARGB(255, 37, 138, 231),
      ),
    );
  }
}
