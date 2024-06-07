import 'dart:math';
import 'package:flutter/material.dart';

class calculator extends StatefulWidget {
  const calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {

  TextEditingController ss =TextEditingController();

  String val1="",val2="",optr="";

  bool clk = false;




  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height:200,
          ),
          TextFormField(
            controller: ss,

            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 100,),
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [


              ElevatedButton(
                  onPressed: (){
                    ss.text = "x²";
                    optr = "x²";
                    clk =  true;

                  }, child: Text('x²',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))),
              ElevatedButton(onPressed: (){
                ss.text = "x³";
                optr = "x³";
                clk =  true;
              }, child: Text('x³',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
              ElevatedButton(
                  onPressed: (){
                    ss.text = "√";
                    optr= "√";
                    clk = true;

                  }, child: Text('√',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
              ElevatedButton(onPressed: (){

                ss.text = "mod";
                optr= "mod";
                clk = true;
              }, child: Text('mod',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
            ],
          ),
          SizedBox(height: 15,),
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [


              ElevatedButton(
                  onPressed: (){
                    ss.text ="";
                    optr ="";
                    clk = false;
                    val2 ="";
                    val1 ="";

              }, child: Text('AC',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))),
              ElevatedButton(onPressed: (){
                if(clk)
                {
                  val2+=".";
                  ss.text = val2;
                }
                else
                {
                  val1+=".";
                  ss.text = val1;
                }
              }, child: Text('.',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
              ElevatedButton(
                  onPressed: (){
                    ss.text = "/";
                    optr= "/";
                    clk = true;

              }, child: Text('/',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
              ElevatedButton(onPressed: (){

                ss.text = "*";
                optr= "*";
                clk = true;
              }, child: Text('*',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
            ],
          ),
          SizedBox(height: 15,),
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [


              ElevatedButton(
                  onPressed: (){

                    if(clk)
                    {
                      val2 +="7";
                      ss.text = val2;
                    }
                    else
                    {
                      val1 +="7";
                      ss.text = val1;
                    }

                  }, child: Text('7',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
              ElevatedButton(onPressed: (){
                if(clk)
                {
                  val2 ="8";
                  ss.text = val2;
                }
                else
                {
                  val1 ="8";
                  ss.text = val1;
                }
              }, child: Text('8',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
              ElevatedButton(
                  onPressed: (){
                    if(clk)
                    {
                      val2 +="9";
                      ss.text = val2;
                    }
                    else
                    {
                      val1 +="9";
                      ss.text = val1;
                    }

                  }, child: Text('9',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
              ElevatedButton(onPressed: (){

                ss.text = "-";
                optr= "-";
                clk = true;
              }, child: Text('-',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
            ],
          ),
          SizedBox(height: 15,),
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [


              ElevatedButton(
                  onPressed: (){

                    if(clk)
                    {
                      val2 +="4";
                      ss.text = val2;
                    }
                    else
                    {
                      val1 +="4";
                      ss.text = val1;
                    }

                  }, child: Text('4',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
              ElevatedButton(onPressed: (){
                if(clk)
                {
                  val2 +="5";
                  ss.text = val2;
                }
                else
                {
                  val1 +="5";
                  ss.text = val1;
                }
              }, child: Text('5',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
              ElevatedButton(
                  onPressed: (){
                    if(clk)
                    {
                      val2 +="6";
                      ss.text = val2;
                    }
                    else
                    {
                      val1 +="6";
                      ss.text = val1;
                    }

                  }, child: Text('6',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
              ElevatedButton(onPressed: (){


                ss.text = "+";
                optr= "+";
                clk = true;
              }, child: Text('+',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
            ],
          ),
          SizedBox(height: 15,),
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [


              ElevatedButton(
                  onPressed: (){

                    if(clk)
                    {
                      val2+="1";
                      ss.text = val2;
                    }
                    else
                    {
                      val1+="1";
                      ss.text = val1;
                    }

                  }, child: Text('1',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
              ElevatedButton(onPressed: (){
                if(clk)
                {
                  val2+="2";
                  ss.text = val2;
                }
                else
                {
                  val1+="2";
                  ss.text = val1;
                }
              }, child: Text('2',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
              ElevatedButton(
                  onPressed: (){
                    if(clk)
                    {
                      val2+="3";
                      ss.text = val2;
                    }
                    else
                    {
                      val1 +="3";
                      ss.text = val1;
                    }

                  }, child: Text('3',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
              ElevatedButton(onPressed: (){
                if(optr == "x²")
                {
                  double a = double.parse(val1);
                  double res = a * a;

                  ss.text = res.toString();
                }

                if(optr == "x³"){
                  double a = double.parse(val1);
                  double res = a*a*a;

                  ss.text = res.toString();
                }

                if(optr == "√"){
                  double a = double.parse(val1);
                  num res = pow(a, (1/2));

                  ss.text=res.toString();
                }

                if(optr == "mod"){
                  double a = double.parse(val1);
                  double b = double.parse(val2);
                  double res = a - b * (a / b).floor();

                  ss.text = res.toString();
                }

                if(optr == "+")
                  {
                    double a = double.parse(val1);
                    double b = double.parse(val2);
                    double res = a+b;

                    ss.text = res.toString();
                  }
                if(optr == "-")
                {
                  double a = double.parse(val1);
                  double b = double.parse(val2);
                  double res = a-b;

                  ss.text = res.toString();
                }
                if(optr == "/")
                {
                  double a = double.parse(val1);
                  double b =double.parse(val2);
                  double res = a/b;

                  ss.text = res.toString();
                }
                if(optr == "*")
                {
                  double a =double.parse(val1);
                  double b = double.parse(val2);
                  double res = a*b;

                  ss.text = res.toString();
                }
                if (optr == "+/-") {
                  double valueToToggle;
                  if (clk) {
                    valueToToggle = double.parse(val2);
                    valueToToggle *= -1;
                    val2 = valueToToggle.toString();
                    ss.text = val2;
                  } else {
                    valueToToggle = double.parse(val1);
                    valueToToggle *= -1;
                    val1 = valueToToggle.toString();
                    ss.text = val1;
                  }
                }



              }, child: Text('=',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold))),
            ],
          ),
          SizedBox(height: 15,),
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [


              ElevatedButton(
                  onPressed: (){
                    String currentValue = ss.text;
                    if (currentValue.isNotEmpty) {
                      String updatedValue = currentValue.substring(0, currentValue.length - 1);
                      ss.text = updatedValue;
                      if (clk) {
                        val2 = updatedValue;
                      } else {
                        val1 = updatedValue;
                      }
                    }


                  }, child: Text('←',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))),
              ElevatedButton(onPressed: (){
                if(clk)
                {
                  val2+="0";
                  ss.text = val2;
                }
                else
                {
                  val1+="0";
                  ss.text = val1;
                }
              }, child: Text('0',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
              ElevatedButton(
                  onPressed: () {
                    if (clk) {
                      double currentValue = double.tryParse(val2) ?? 0;
                      currentValue *= -1;
                      val2 = currentValue.toString();
                      ss.text = val2;
                    } else {
                      double currentValue = double.tryParse(val1) ?? 0;
                      currentValue *= -1;
                      val1 = currentValue.toString();
                      ss.text = val1;
                    }
                  },
                  child: Text('+/-',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)
                  )
              )
            ],
          ),

        ],
      ),
    );
  }
}
