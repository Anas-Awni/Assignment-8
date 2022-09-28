import 'package:flutter/material.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "User  Screen",
          style: TextStyle(
              fontFamily: "Lobster", fontSize: 29, color: Colors.black),
        ),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("images/userpage.gif"),
          ),
        ),
        child: Text(
          "Welcome",
          style: TextStyle(
              fontFamily: "Lobster", fontSize: 29, color: Colors.cyanAccent),
        ),
      ),
    );
  }
}
