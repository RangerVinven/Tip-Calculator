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
          child: Center(
            child: Column(
              children: [
                const Text(
                  "Tip Calculator",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 204, 51, 255)
                  ),
                ),
                const Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "£57.00",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 50,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: Column(
                    children: [
                      const TextField(
                        decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Total Bill Amount"
                        )
                      ),
                      const SizedBox(height: 20),
                      const TextField(
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: "Percentage To Tip"
                        )
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromARGB(255, 204, 51, 255)
                        ),
                        child: const Text(
                          "Calculate",
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      )
                    ],
                  )
                ),
                const SizedBox(height: 10)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

String calculateTip(double billAmount, int amountToTip) {
  return (billAmount * (amountToTip/100)).toStringAsFixed(2);
}