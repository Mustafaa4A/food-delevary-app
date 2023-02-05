import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_order_app/widgets/profile_widget.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(100, 70, 100, 200),
      child: ListView(
        children: [
          const DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.blueAccent),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('images/profile.jpg'),
                  ),
                  accountName: Text(
                    'Mustafa Abubakar',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  accountEmail: Text('musdhafa42@gmail.com',
                      style: TextStyle(fontSize: 13)))),

          // home
          ListTile(
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, 'home');
            },
            leading: const Icon(
              CupertinoIcons.home,
              color: Colors.white,
            ),
            title: const Text(
              'Home',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),

          // account
          ListTile(
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, 'profile');
            },
            leading: Icon(
              CupertinoIcons.person,
              color: Colors.white,
            ),
            title: Text(
              'My Account',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),

          //
          ListTile(
            leading: Icon(
              CupertinoIcons.cart_fill,
              color: Colors.white,
            ),
            title: Text(
              'My Orders',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),

          //
          ListTile(
            leading: Icon(
              CupertinoIcons.heart_fill,
              color: Colors.white,
            ),
            title: Text(
              'My Favorites',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),

          //
          ListTile(
            leading: Icon(
              CupertinoIcons.settings,
              color: Colors.white,
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),

          //
          ListTile(
            leading: Icon(
              Icons.logout,
              color: Colors.white,
            ),
            title: Text(
              'Logout',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
