import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  String _infoText = 'Insert your data!';

  void _resetFields() {
    setState(() {
      weightController.text = '';
      heightController.text = '';
      _infoText = 'Insert your data!';
    });
  }

  void _calculate() {
    setState(() {
      double weight = double.parse(weightController.text);

      double height = double.parse(heightController.text) / 100;
      double imc = weight / (height * height);
      if (imc < 18.9) {
        _infoText = "Low Weight (${imc.toStringAsPrecision(3)})";
      } else if (imc >= 18.9 && imc < 24.9) {
        _infoText = "Ideal Weight (${imc.toStringAsPrecision(3)})";
      } else if (imc >= 24.9 && imc < 29.9) {
        _infoText = "Slightly Overweight (${imc.toStringAsPrecision(3)})";
      } else if (imc >= 29.9 && imc < 34.9) {
        _infoText = "Obesity I (${imc.toStringAsPrecision(3)})";
      } else if (imc >= 34.9 && imc < 39.9) {
        _infoText = "Obesity II (${imc.toStringAsPrecision(3)})";
      } else if (imc >= 40) {
        _infoText = "Obesity III (${imc.toStringAsPrecision(3)})";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IMC Calculator'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: _resetFields,
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Icon(Icons.person_pin, size: 120.0, color: Colors.greenAccent),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Weight(kg)',
                  labelStyle: TextStyle(color: Colors.greenAccent)),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.greenAccent, fontSize: 25.0),
              controller: weightController,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Heigth(cm)',
                  labelStyle: TextStyle(color: Colors.greenAccent)),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.greenAccent, fontSize: 25.0),
              controller: heightController,
            ),
            Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Container(
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: _calculate,
                    child: Text(
                      'Calculator',
                      style: TextStyle(color: Colors.white, fontSize: 25.0),
                    ),
                    color: Colors.greenAccent,
                  ),
                )),
            Text(
              _infoText,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.greenAccent, fontSize: 25.0),
            )
          ],
        ),
      ),
    );
  }
}
