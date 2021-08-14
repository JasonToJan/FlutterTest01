import 'package:flutter/material.dart';

class ConstrainedBoxWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ConstrainedBox"),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 100,
          minHeight: 100,
          maxWidth: 250,
          maxHeight: 250,
        ),
        child: new Container(
          width: 300,
          height: 300,
          color: Colors.blue,
        ),
      ),
    );
  }

}