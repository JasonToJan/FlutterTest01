import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("按钮"),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            elevation: 0,
            color: Colors.blue,
            child: Text("RaisedButton"),
            textColor: Colors.white,
            onPressed: () => {},
          ),
          FlatButton(
            onPressed: () {
              print("FlatButton");
            },
            child: Text("FlatButton"),
            textColor: Colors.blue,
          ),
          OutlineButton(
            textColor: Colors.blue,
            child: Text("OutlineButton"),
            onPressed: () {
              print("OutlineButton");
            },
          ),
          FloatingActionButton(
            child: Text("Floating"),
            onPressed: () {
              print("F");
            },
          ),
          IconButton(
            color: Colors.red,
            icon: Icon(Icons.favorite),
            onPressed: () {
              print("IconButton");
            },
          ),
          RaisedButton.icon(
            icon: Icon(Icons.favorite),
            label: Text("收藏"),
            onPressed: () {
              print("带Icon的文字按钮");
            },
          ),
          FlatButton(
            textTheme: ButtonTextTheme.accent,
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(18),
              side: BorderSide(color: Colors.red),
            ),
            child: Text("Rounded Button"),
            onPressed: () {
              print("Rounded Button");
            },
          ),
          FlatButton(
            shape: BeveledRectangleBorder(
              borderRadius: new BorderRadius.circular(10),
              side: BorderSide(color: Colors.red),
            ),
            child: Text("Beveled Button"),
            onPressed: () {
              print("Beveled Button");
            },
          ),
        ],
      ),
    );
  }
}