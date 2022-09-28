import 'package:flutter/material.dart';

class Sign_up extends StatefulWidget {
  const Sign_up({super.key});

  @override
  State<Sign_up> createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            "sign up page",
            style: TextStyle(
                fontFamily: "Lobster", fontSize: 29, color: Colors.black),
          )),
      body: Container(
        alignment: Alignment.topCenter,
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("images/signin.jpg"),
          ),
        ),
        child: Text(
          "Hello",
          style: TextStyle(
              fontFamily: "Lobster", fontSize: 29, color: Colors.cyanAccent),
        ),
      ),
    );
  }
}
