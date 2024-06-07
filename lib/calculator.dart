import 'package:calc/calc.dart';
import 'package:flutter/material.dart';


import 'bmi.dart';
import 'gst.dart';

class calc extends StatefulWidget {
  const calc({super.key});

  @override
  State<calc> createState() => _abcState();
}

class _abcState extends State<calc> {

  int index = 0;


  final screens = [
   calculator(),
    bmi(),
    gst()


  ];

  void tap(_index)
  {
    setState(() {
      index = _index;

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[index],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.calculate,color: Colors.black,),label: 'Calc'),
            BottomNavigationBarItem(icon: Icon(Icons.calculate_outlined,color: Colors.black,),label: "BMI"),
            BottomNavigationBarItem(icon: Icon(Icons.calculate_rounded,color: Colors.black,),label: "GST"),

          ],
          currentIndex: index,
          onTap: tap,

        )
    );
  }
}

