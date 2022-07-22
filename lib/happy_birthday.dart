import 'package:flutter/material.dart';

class HappyBirthdayScreen extends StatelessWidget {
  final text;
  HappyBirthdayScreen({this.text});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              //text
              Container(
                margin: const EdgeInsets.only(
                  top: 10,
                ),
                child: Text(
                  "Happy Birthday...\n${text}",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),
              ),
              //image
              Container(
                margin: const EdgeInsets.only(
                  top: 20,
                ),
                width: 400,
                height: 400,
                child: Image.asset("assets/images/cakes.png"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
