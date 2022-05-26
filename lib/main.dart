import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                child: const Text(
                  "Tip Calculator",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 204, 51, 255)
                  ),
                ),
              ),
              const Text(
                "£57.00",
                style: TextStyle(
                  fontSize: 20,
                ),
              )
            ]
          ),
        ),
      )
    );
  }
}