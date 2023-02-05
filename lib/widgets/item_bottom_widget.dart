import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ItemBottomWidget extends StatelessWidget {
  final double price;
  const ItemBottomWidget({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Text(
                  "Total:",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  "\$${price}",
                  style: const TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                )
              ],
            ),
            ElevatedButton.icon(
                icon: Icon(CupertinoIcons.cart),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 20))),
                onPressed: () {},
                label: const Text(
                  'Add To Cart',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                )),
          ],
        ),
      ),
    );
    ;
  }
}
