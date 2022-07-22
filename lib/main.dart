import 'package:flutter/material.dart';

import 'happy_birthday.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var value = "";
    return Center(
      child: Column(
        children: [
          //TextField
          Container(
            width: 250,
            margin: const EdgeInsets.only(
              top: 10,
            ),
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(4),
            ),
            child: TextField(
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              onChanged: (text) {
                value = text;
              },
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Enter Your Name",
                hintStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          //for button
          Container(
            height: 40,
            margin: const EdgeInsets.only(
              top: 10,
            ),
            child: ElevatedButton(
              child: Text(
                "Create Birthday Card",
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HappyBirthdayScreen(text: value)),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
