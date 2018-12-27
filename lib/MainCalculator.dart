import 'package:flutter/material.dart';

class MainCalculator extends StatefulWidget {
  @override
  _MainCalculator createState() => _MainCalculator();
}

class _MainCalculator extends State<MainCalculator> {
  double firstNumber = 0, secondNumber = 0, result = 0;

  void performAddition() {
    setState(() {
      result = firstNumber + secondNumber;
    });
  }

  void performSubtraction() {
    setState(() {
      result = firstNumber - secondNumber;
    });
  }

  void peformMultiplication() {
    setState(() {
      result = firstNumber * secondNumber;
    });
  }

  void performDivision() {
    setState(() {
      result = firstNumber / secondNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ER-Calculator"),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30.0,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Please enter a number",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16.0),
                  hasFloatingPlaceholder: true),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  firstNumber = double.parse(value);
                });
              },
            ),
            SizedBox(
              height: 15.0,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Please enter a number",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 16.0),
                  hasFloatingPlaceholder: true),
              keyboardType: TextInputType.number,
              onChanged: (secondValue) {
                setState(() {
                  secondNumber = double.parse(secondValue);
                });
              },
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Result = $result",
              textAlign: TextAlign.right,
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                    child: Text("+", style: TextStyle(fontSize: 20.0)),
                    color: Colors.grey,
                    onPressed: () => performAddition(),
                  ),
                  MaterialButton(
                    child: Text("-", style: TextStyle(fontSize: 20.0)),
                    color: Colors.grey,
                    onPressed: () => performSubtraction(),
                  ),
                ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text("/", style: TextStyle(fontSize: 20.0)),
                  color: Colors.grey,
                  onPressed: () => this.performDivision(),
                ),
                MaterialButton(
                  child: Text("*", style: TextStyle(fontSize: 20.0)),
                  color: Colors.grey,
                  onPressed: () => this.peformMultiplication(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
