import 'package:flutter/material.dart';
import 'package:myapp/screens/login.dart';
import 'package:myapp/screens/signup.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        centerTitle: true,
        title: Text(
          "Home Page",
          style: TextStyle(
              fontFamily: "Lobster", fontSize: 29, color: Colors.black),
        ),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyanAccent),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return Log_in();
                  })));
                },
                child: Text(
                  "Log-In Page",
                  style: TextStyle(
                      fontFamily: "Lobster", fontSize: 29, color: Colors.black),
                )),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyanAccent),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return Sign_up();
                  })));
                },
                child: Text(
                  "Sign-Up Page",
                  style: TextStyle(
                      fontFamily: "Lobster", fontSize: 26, color: Colors.black),
                )),
          ]),
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage("images/home.jpg")),
          ),
        ),
      ),
    );
  }
}
