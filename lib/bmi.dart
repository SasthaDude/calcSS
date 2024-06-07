import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bmi extends StatefulWidget {
  const bmi({super.key});

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  TextEditingController height = TextEditingController();
  TextEditingController weight = TextEditingController();
  TextEditingController res = TextEditingController();

  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: Text(
          'BMI Calculator', style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 250,
              width: 400,
              decoration: BoxDecoration(
                  border: Border.all(),
                  color: Colors.cyan
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Enter the Height in cm', style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 200,
                          child: TextFormField(
                            controller: height,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Enter the weight in cm', style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 200,
                          child: TextFormField(
                            controller: weight,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: calculateBMI, child: Text('Calculate')),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 250,
              width: 400,
              decoration: BoxDecoration(
                  border: Border.all(),
                  color: Colors.cyan
              ),
              child: Column(
                children: [
                  Text(' Your Body Mass Index is', style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Your BMI is", style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),),
                      Container(
                        width: 200,
                        child: TextFormField(
                            controller: res,
                            decoration: InputDecoration(
                                border: OutlineInputBorder()
                            )
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 28),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Result', style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),)),
                  )
                ],
              ),
            ),
          )

        ],
      ),
    );
  }


  void calculateBMI() {
    double _height = double.parse(height.text) / 100;
    double _weight = double.parse(weight.text);

    double heightSquare = _height * _height;
    double bmi = _weight / heightSquare;
    res.text = bmi.toStringAsFixed(1);

    String resultText;

    if (bmi < 18.5) {
      resultText = "Underweight";
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.red,
            title: Text("BMI Result"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Your BMI is: $bmi",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "Result: $resultText",
                  style: TextStyle(fontWeight: FontWeight.bold,),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Close"),
              ),
            ],
          );
        },
      );
    }
    else if (bmi >= 18.5 && bmi <= 24.9) {
      resultText = "Healthy Weight ";
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.green,
            title: Text("BMI Result"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Your BMI is: $bmi",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "Result: $resultText",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Close"),
              ),
            ],
          );
        },
      );
    }
    else if (bmi >= 25 && bmi <= 29.9) {
      resultText = "Overweight";
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.orange,
            title: Text("BMI Result"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Your BMI is: $bmi",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "Result: $resultText",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Close"),
              ),
            ],
          );
        },
      );
    }

  }
}
