import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_order_app/widgets/app_bar_widget.dart';
import 'package:food_order_app/widgets/cart_button_widget.dart';
import 'package:food_order_app/widgets/drawer_wiget.dart';
import 'package:food_order_app/widgets/order_item_widget.dart';
import 'package:food_order_app/widgets/cart_bottom_navbar.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBarWidget(),
                  const Padding(
                    padding: EdgeInsets.only(top: 20, left: 10, bottom: 10),
                    child: Text(
                      'Order List',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),

                  //items
                  OrderItemWidget(
                    title: 'Hot Bugger',
                    subtitle: 'Dalbo oo hada hell Bugger',
                    price: '6',
                    items: 2,
                    image: 'bugger.jpg',
                  ),

                  OrderItemWidget(
                    title: 'Coffee',
                    subtitle: 'Dalbo oo hada hell Bugger',
                    price: '2',
                    items: 2,
                    image: 'coffee12.png',
                  ),

                  OrderItemWidget(
                    title: 'Pizza',
                    subtitle: 'Dalbo oo hada hell Bugger',
                    price: '8',
                    items: 1,
                    image: 'pizza12.jpg',
                  ),

                  //
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Items:",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "5",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),

                          //
                          const Divider(
                            color: Colors.black,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Sub-total",
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  "\$24",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                          ),

                          // delevery

                          const Divider(
                            color: Colors.black26,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Delevery",
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  "\$1.5",
                                  style: TextStyle(fontSize: 18),
                                ),
                              ],
                            ),
                          ),

                          // total
                          const Divider(
                            color: Colors.black12,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Total",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "\$25.5",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
      drawer: const DrawerWidget(),
      bottomNavigationBar: const CartBottomNavbar(),
    );
  }
}
