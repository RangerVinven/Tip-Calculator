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

  void calculateTip(double billAmount, double amountToTip) {
    setState(() {
      tipAmount = "£" + (billAmount * (amountToTip/100)).toStringAsFixed(2);
    });
  }

  String tipAmount = "";
  double billAmount = 0.0;
  double percentageToTip = 0.0;

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
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      tipAmount,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 50,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: Column(
                    children: [
                      TextField(
                        onChanged: (text) {
                          setState(() {
                            billAmount = double.parse(text);
                          });
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                            labelText: "Total Bill Amount"
                          )
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        onChanged: (text) {
                          percentageToTip = double.parse(text);
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Percentage To Tip"
                        )
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          calculateTip(billAmount, percentageToTip);
                        },
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