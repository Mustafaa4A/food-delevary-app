import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_order_app/widgets/app_bar_widget.dart';
import 'package:food_order_app/widgets/cart_button_widget.dart';
import 'package:food_order_app/widgets/categories_widget.dart';
import 'package:food_order_app/widgets/new_items_widget.dart';
import 'package:food_order_app/widgets/popular_items_widget.dart';
import 'package:food_order_app/widgets/drawer_wiget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // custom app bar
          const AppBarWidget(),

          // search
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: const Offset(0, 3))
                    ]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      // icon
                      const Icon(
                        CupertinoIcons.search,
                        color: Colors.red,
                      ),

                      // search input
                      Container(
                        width: 300,
                        height: 50,
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          child: TextField(
                            controller: null,
                            decoration: InputDecoration(
                                hintText: 'Search your Favorite Food?',
                                border: InputBorder.none),
                          ),
                        ),
                      ),

                      //
                      const Icon(Icons.filter_list)
                    ],
                  ),
                )),
          ),

          //category
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              'Categories',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
          ),

          // categories
          const CategoriesWidget(),

          // popular items
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              'Popular Items',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
          ),

          // popular items widget
          PopularItemsWidget(),

          //Newest
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 10),
            child: Text(
              'Newest',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
          ),

          // Newest items Widget
          NewestItemsWidget()
        ],
      ),
      drawer: const DrawerWidget(),

      // floating
      floatingActionButton: const CartButtonWidget(),
    );
  }
}
