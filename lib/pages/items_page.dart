import 'package:clippy_flutter/arc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_order_app/widgets/app_bar_widget.dart';
import 'package:food_order_app/widgets/drawer_wiget.dart';

import '../widgets/item_bottom_widget.dart';

class ItemsPage extends StatefulWidget {
  final String title;
  final String subtitle;
  final double price;
  final String image;

  const ItemsPage(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.price,
      required this.image});

  @override
  State<ItemsPage> createState() => _ItemsPageState();
}

class _ItemsPageState extends State<ItemsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: ListView(children: [
          const AppBarWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Image.asset(
              'images/${widget.image}',
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEY,
            height: 50,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 60, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 18,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context, _) =>
                                const Icon(Icons.star, color: Colors.red),
                            onRatingUpdate: (index) {},
                          ),
                          Text(
                            '\$${widget.price}',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.title,
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 100,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  CupertinoIcons.minus,
                                  color: Colors.white,
                                ),
                                Text(
                                  "5",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Icon(
                                  CupertinoIcons.plus,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    //
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        widget.subtitle,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),

                    //
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Deliveri Time:',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                            textAlign: TextAlign.justify,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Icon(
                                  CupertinoIcons.clock,
                                  color: Colors.red,
                                ),
                              ),
                              Text(
                                '30 Minutes',
                                style: TextStyle(fontSize: 15),
                                textAlign: TextAlign.justify,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
      bottomNavigationBar: ItemBottomWidget(price: widget.price * 5),
      drawer: DrawerWidget(),
    );
  }
}

// add clippy_flutter
