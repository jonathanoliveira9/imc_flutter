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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IMC Calculator'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.refresh),
            onPressed: () {},)
        ],
      ),

      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Icon(Icons.person_pin, size: 120.0, color: Colors.greenAccent),
            TextField(keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Weight(kg)',
                  labelStyle: TextStyle(color: Colors.greenAccent)
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.greenAccent, fontSize: 25.0),
            ),
            TextField(keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Heigth(cm)',
                  labelStyle: TextStyle(color: Colors.greenAccent)
              ),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.greenAccent, fontSize: 25.0),
            ),
          Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Container(
                height: 50.0,
                child: RaisedButton(
                  onPressed: () {},
                  child: Text('Calculator', style: TextStyle(color: Colors.white, fontSize: 25.0),),
                  color: Colors.greenAccent,
                ),
              )
          ),
            Text('Info',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.greenAccent, fontSize: 25.0),)
          ],
        ),
      ),
    );
  }
}
