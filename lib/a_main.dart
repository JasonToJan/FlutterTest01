import 'package:flutter/material.dart';

import 'b_home_page.dart';
import 'ba_context_test.dart';
import 'bb_container.dart';
import 'bc_constrainedbox_widget.dart';
import 'bd_fittedbox_widget.dart';
import 'be_fractionally_sized_box.dart';
import 'bf_baseline.dart';
import 'bg_text_imageicon.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter组件详解',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/Context': (context) => ContextTest(),
        '/Container': (context) => ContainerWidget(),
        '/ConstrainedBox': (context) => ConstrainedBoxWidget(),
        '/FittedBox': (context) => FittedBoxWidget(),
        '/FractionallySizedBox': (context) => FractionallySizedBoxWidget(),
        '/Baseline': (context) => BaselineWidget(),
        '/TextImageIcon': (context) => TextImageIconWidget(),
      },
      home: MyHomePage(title: 'Flutter组件详解'),
    );
  }
}


