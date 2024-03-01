// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final usercontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  String displayusername = "";
  String displaypassword = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: MediaQuery.sizeOf(context).width * .60,
              height: MediaQuery.sizeOf(context).height * .80,
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      child: Image.network(
                          "https://marketplace.canva.com/EAFauoQSZtY/1/0/1600w/canva-brown-mascot-lion-free-logo-qJptouniZ0A.jpg"),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text("Welcome back!"),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: usercontroller,
                      decoration: InputDecoration(
                          label: Text("Username"),
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 10))),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      controller: passwordcontroller,
                      decoration: InputDecoration(
                          label: Text("Password"),
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 10))),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              value: true,
                              onChanged: (value) {},
                            ),
                            Text("Remember me")
                          ],
                        ),
                        Text("forgot password?")
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 1, 20, 36),
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Text(
                        "LOGIN",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("create Account")
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
