import 'package:flutter/material.dart';

class CartBottomNavbar extends StatelessWidget {
  const CartBottomNavbar({super.key});

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
              children: const [
                Text(
                  "Total:",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "\$25.5",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                )
              ],
            ),
            ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 20))),
                onPressed: () {},
                child: const Text(
                  'Order Now',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ))
          ],
        ),
      ),
    );
  }
}
