import 'package:flutter/material.dart';
import 'package:food_order_app/pages/items_page.dart';

class PopularItemWidget extends StatefulWidget {
  final String title;
  final String subtitle;
  final double price;
  final String image;

  const PopularItemWidget(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.price,
      required this.image});

  @override
  State<PopularItemWidget> createState() => _PopularItemWidgetState();
}

class _PopularItemWidgetState extends State<PopularItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Container(
        width: 175,
        height: 230,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 1))
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
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
                  ),
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                widget.title,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                widget.subtitle.substring(0, 50) + '...',
                style: const TextStyle(fontSize: 12),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("\$" + widget.price.toString()),
                  const Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
