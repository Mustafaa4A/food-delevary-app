import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_order_app/pages/items_page.dart';

class NewItemWidget extends StatefulWidget {
  final String title;
  final String subtitle;
  final double price;
  final String image;
  const NewItemWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.price,
      required this.image});

  @override
  State<NewItemWidget> createState() => _NewItemWidgetState();
}

class _NewItemWidgetState extends State<NewItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: 380,
        height: 150,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 1))
            ]),
        child: Row(children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ItemsPage(
                            title: widget.title,
                            subtitle: widget.subtitle,
                            image: widget.image,
                            price: widget.price,
                          )));
            },
            child: Container(
              alignment: Alignment.center,
              child: Image.asset(
                'images/${widget.image}',
                height: 120,
                width: 150,
              ),
            ),
          ),
          Container(
            width: 190,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.subtitle.substring(0, 40),
                    style: TextStyle(fontSize: 16),
                  ),
                  RatingBar.builder(
                    initialRating: 4,
                    minRating: 1,
                    direction: Axis.horizontal,
                    itemCount: 5,
                    itemSize: 18,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4),
                    itemBuilder: (context, _) =>
                        const Icon(Icons.star, color: Colors.red),
                    onRatingUpdate: (index) {},
                  ),
                  Text(
                    "\$" + "${widget.price}",
                    style: const TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                    size: 26,
                  ),
                  Icon(
                    CupertinoIcons.cart,
                    color: Colors.red,
                    size: 26,
                  )
                ]),
          )
        ]),
      ),
    );
  }
}
