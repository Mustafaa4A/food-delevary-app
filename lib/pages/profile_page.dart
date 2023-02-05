import 'package:clippy_flutter/arc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_order_app/widgets/profile_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Arc(
              edge: Edge.BOTTOM,
              arcType: ArcType.CONVEX,
              height: 110,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                height: 300,
                width: 30,
                decoration: BoxDecoration(color: Colors.blueAccent),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [ProfileWidget()]),
              )),
          SizedBox(
            height: 20,
          ),
          //
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    CupertinoIcons.person,
                    color: Colors.blueAccent,
                    size: 30,
                  ),
                  title: Text(
                    'Mustafa Abubakar',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.6), fontSize: 18),
                  ),
                ),
                Divider(color: Colors.white.withOpacity(0.7)),

//
                ListTile(
                  leading: Icon(
                    CupertinoIcons.mail,
                    color: Colors.blueAccent,
                    size: 30,
                  ),
                  title: Text(
                    'musdhafa42@gmail.com',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.6), fontSize: 18),
                  ),
                ),
                Divider(color: Colors.white.withOpacity(0.7)),

                //
                ListTile(
                  leading: Icon(
                    CupertinoIcons.phone,
                    color: Colors.blueAccent,
                    size: 30,
                  ),
                  title: Text(
                    '+252 619355938',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.6), fontSize: 18),
                  ),
                ),
                Divider(color: Colors.white.withOpacity(0.7)),

                //
                ListTile(
                  leading: Icon(
                    CupertinoIcons.location_solid,
                    color: Colors.blueAccent,
                    size: 30,
                  ),
                  title: Text(
                    'Howlwadaag',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.6), fontSize: 18),
                  ),
                ),
                Divider(color: Colors.white.withOpacity(0.7)),

//
                ListTile(
                  leading: Icon(
                    CupertinoIcons.lock,
                    color: Colors.blueAccent,
                    size: 30,
                  ),
                  title: Text(
                    '*****************',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.6), fontSize: 18),
                  ),
                  trailing: Icon(
                    CupertinoIcons.eye,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                Divider(color: Colors.white.withOpacity(0.7)),

                // update
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: 400,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          backgroundColor: Colors.blueAccent,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15)),
                      onPressed: () {},
                      child: const Text(
                        'Edit Profile',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
