import 'package:flutter/material.dart';

class RowColumnWidget extends StatefulWidget {

  final String title;

  RowColumnWidget({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RowColumnState();
}

class _RowColumnState extends State<RowColumnWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row Column"),
      ),
      body: Row(
        textDirection: TextDirection.rtl,
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            alignment: Alignment.center,
            child: Text(
              "A",
              style: new TextStyle(
                color: Colors.white,
                fontSize: 25
              ),
            ),
          ),
          Spacer(flex: 3),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            alignment: Alignment.center,
            child: Text(
              "B",
              style: new TextStyle(
                color: Colors.white,
                fontSize: 25
              ),
            ),
          ),
          Spacer(flex: 3),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
            alignment: Alignment.center,
            child: Text(
              "C",
              style: new TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ],
      ),
    );
  }
}