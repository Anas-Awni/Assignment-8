import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:myapp/screens/user.dart';

class Log_in extends StatefulWidget {
  const Log_in({super.key});

  @override
  State<Log_in> createState() => _Log_inState();
}

class _Log_inState extends State<Log_in> {
  String email = "anasawni@gmail.com";
  String password = "youarethebest";
  bool isObsecure = true;
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          centerTitle: true,
          title: Text(
            "Log in page",
            style: TextStyle(
                fontFamily: "Lobster", fontSize: 29, color: Colors.black),
          )),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage("images/logimg.jpg"))),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CircleAvatar(
                radius: 70,
                child: Image(image: AssetImage("images/p.png")),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: TextField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green, width: 1)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "Please enter your email",
                    label: Text(
                      "Email",
                      style: TextStyle(fontSize: 25),
                    ),
                    prefixIcon: Icon(Icons.person),
                    suffixIcon: Icon(Icons.email),
                  ),
                  maxLines: 1,
                  maxLength: 25,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: TextField(
                  controller: passwordController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.green, width: 1)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText: "Please enter your password",
                      label: Text(
                        "password",
                        style: TextStyle(fontSize: 25),
                      ),
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isObsecure = !isObsecure;
                          });
                        },
                        icon: Icon(isObsecure
                            ? Icons.visibility_off
                            : Icons.visibility),
                      )),
                  maxLines: 1,
                  maxLength: 20,
                  textAlign: TextAlign.center,
                  obscureText: isObsecure,
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.cyan,
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Text("Can you please wait ?"),
                                Icon(Ionicons.logo_android)
                              ],
                            ),
                          ),
                          actions: [
                            ElevatedButton(
                                onPressed: () {
                                  if (email == emailController.text &&
                                      password == passwordController.text) {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: ((context) {
                                      return User();
                                    })));
                                  } else {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                              title: Text("Message"),
                                              content: Text(
                                                  "You Entered Wrong Email Or Password !"),
                                              actions: [
                                                TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: Container(
                                                    alignment: Alignment.center,
                                                    color: Colors.lightBlue,
                                                    padding:
                                                        const EdgeInsets.all(
                                                            14),
                                                    child: const Text(
                                                      "okay",
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ]);
                                        });
                                  }
                                },
                                child: Text("I wil wait")),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context,
                                      Builder(builder: (context) {
                                    return Log_in();
                                  }));
                                },
                                child: Text("no i can't wait"))
                          ],
                        );
                      },
                    );
                  },
                  child: Text(
                    "log-in",
                    style: TextStyle(
                        fontFamily: "Lobster",
                        fontSize: 29,
                        color: Colors.black),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
