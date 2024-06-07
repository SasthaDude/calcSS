import 'package:flutter/material.dart';

class gst extends StatefulWidget {
  const gst({super.key});

  @override
  State<gst> createState() => _gstState();
}

class _gstState extends State<gst> {
  TextEditingController price = TextEditingController();
  TextEditingController percentage = TextEditingController();
  TextEditingController eval = TextEditingController();
  TextEditingController ival = TextEditingController();

  String value ="";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('%',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 35),
          child: Text('GST Calculator',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 250,
            width: 400,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Enter The Price',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      Container(
                        width: 150,
                        child: TextField(
                          controller: price,
                          decoration: InputDecoration(
                            border: OutlineInputBorder()
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Enter Percentage',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                      Container(
                        width: 150,
                        child: TextField(
                          controller: percentage,
                          decoration: InputDecoration(
                              border: OutlineInputBorder()
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: (){
                    setState(() {
                      double _price = double.parse(price.text);
                      double _percent = double.parse(percentage.text);

                      double ok = _price - (_price * (100 / (100 + _percent)));
                      eval.text =ok.toStringAsFixed(2);

                      double okok = (_price * _percent / 100);
                      ival.text = okok.toStringAsFixed(2);
                      var a = 10;
                      eval.text = ok.toString();
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 300,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          "excluding",
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                                        ),
                                        Text(
                                          "including",
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        width: 150,
                                        child: TextField(
                                          controller: eval,
                                          readOnly: true,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 150,
                                        child: TextField(
                                          controller: ival,
                                          readOnly: true,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );

                    });
                  },
                  child: Text("Calculate"),
                ),

              ],
            ),
          ),
          Container(
            height: 200,
            width: 400,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('excluding',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                    Text('including',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150,
                        child: TextField(
                          controller: eval,
                          decoration: InputDecoration(
                            border: OutlineInputBorder()
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150,
                        child: TextField(
                          controller: ival,
                          decoration: InputDecoration(
                              border: OutlineInputBorder()
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  void calculateGST() {
    double _price = double.parse(price.text);
    double _percent = double.parse(percentage.text);

    double ok = _price - (_price * (100 / (100 + _percent)));
    eval.text = ok.toString();

    double okok = (_price * _percent / 100);
    ival.text = okok.toString();
  }
}
