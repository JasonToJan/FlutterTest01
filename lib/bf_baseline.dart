import 'package:flutter/material.dart';

class BaselineWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Baseline"),
      ),
      body: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new Baseline(
            baseline: 100,
            baselineType: TextBaseline.alphabetic,
            child: new Text(
              '今天天气真好呀',
              style: new TextStyle(
                fontSize: 18,
                textBaseline: TextBaseline.alphabetic,
              ),
            ),
          ),
          new Baseline(
            baseline: 400,
            baselineType: TextBaseline.alphabetic,
            child: new Text(
              '适合晨练',
              style: new TextStyle(
                fontSize: 30,
                textBaseline: TextBaseline.alphabetic,
              ),
            ),
          ),
          new Baseline(
            baseline: 200.0,
            baselineType: TextBaseline.alphabetic,
            child: FlutterLogo(
              size: 100,
            ),
          ),
        ],
      ),
    );
  }
}