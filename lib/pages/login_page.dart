import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String message = '';
  final userController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // text
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 30),
                child: Column(
                  children: const [
                    Text(
                      'LOGIN',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          color: Colors.white),
                    ),
                    Text(
                      "Let's get you logged in.",
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                  ],
                ),
              ),

              //
              if (message != '')
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 204, 39, 39),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        message,
                        style: TextStyle(
                            fontSize: 17, color: Colors.white.withOpacity(0.7)),
                      ),
                    ),
                  ),
                ),
              // username
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
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
                            CupertinoIcons.person,
                            color: Colors.blueAccent,
                          ),

                          //input
                          Container(
                            width: 270,
                            height: 50,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 15,
                              ),
                              child: TextField(
                                controller: null,
                                decoration: InputDecoration(
                                    hintText: 'Enter username',
                                    border: InputBorder.none),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),

              // Password
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
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
                          const Icon(Icons.lock_outline,
                              color: Colors.blueAccent),

                          //  input
                          Container(
                            width: 285,
                            height: 50,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 15,
                              ),
                              child: TextField(
                                controller: null,
                                decoration: InputDecoration(
                                    hintText: 'Enter password',
                                    border: InputBorder.none),
                              ),
                            ),
                          ),

                          //
                          InkWell(
                            child: Icon(CupertinoIcons.eye_slash),
                            onTap: () {},
                          )
                        ],
                      ),
                    )),
              ),

              // login
              Padding(
                  padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: Colors.blueAccent,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 15)),
                        onPressed: () {
                          Navigator.pushNamed(context, 'home');
                        },
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        )),
                  )),
            ],
          )),
    );
    ;
  }
}
