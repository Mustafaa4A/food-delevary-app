import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CatWidget extends StatelessWidget {
  final String name;
  final String image;
  const CatWidget({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        children: [
          Container(
              height: 240,
              width: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/${image}'), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        // height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.8),
                        ),
                        child: Text(
                          name,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ]),
              )),
        ],
      ),
    );
  }
}
