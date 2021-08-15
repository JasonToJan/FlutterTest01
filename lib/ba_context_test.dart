import 'package:flutter/material.dart';

class ContextTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Context12345"),
      ),
      body: Column(
        children: <Widget>[
          Builder(builder: (context) {
            // 通过context上下文，往上查找最近的widget
            Scaffold scaffold = context.findAncestorWidgetOfExactType<Scaffold>();
            return Center(child: (scaffold?.appBar as AppBar).title);
          }),
        ],
      ),
    );
  }
}