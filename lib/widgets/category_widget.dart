import 'package:flutter/material.dart';
import 'package:food_order_app/pages/category_page.dart';

class CategoryWidget extends StatelessWidget {
  final String name;
  final String image;
  const CategoryWidget({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CategoryPage()));
        },
        child: Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color.fromARGB(255, 123, 212, 228),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 123, 212, 228),
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 1))
                ]),
            child: Image.asset(
              'images/${image}',
              fit: BoxFit.cover,
              width: 70,
              height: 50,
            )),
      ),
    );
  }
}
