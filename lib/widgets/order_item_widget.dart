import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class OrderItemWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String price;
  final int items;
  final String image;

  const OrderItemWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.price,
      required this.items,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: 380,
        height: 100,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'images/${image}',
                height: 80,
                width: 150,
              ),
            ),
            Container(
                width: 190,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(subtitle, style: const TextStyle(fontSize: 14)),
                    Text(
                      "\$${price}",
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    )
                  ],
                )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(10)),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        CupertinoIcons.plus,
                        color: Colors.white,
                      ),
                      Text(
                        items.toString(),
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Icon(
                        CupertinoIcons.minus,
                        color: Colors.white,
                      )
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
