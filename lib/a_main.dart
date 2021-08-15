import 'package:flutter/material.dart';
import 'package:test2/bj_wrap.dart';
import 'package:test2/bk_stack.dart';
import 'package:test2/bl_row_column.dart';

import 'b_home_page.dart';
import 'ba_context_test.dart';
import 'bb_container.dart';
import 'bc_constrainedbox_widget.dart';
import 'bd_fittedbox_widget.dart';
import 'be_fractionally_sized_box.dart';
import 'bf_baseline.dart';
import 'bg_text_imageicon.dart';
import 'bh_button.dart';
import 'bi_flex.dart';
import 'bm_appbar.dart';
import 'bn_custom_appbar.dart';
import 'bo_listview.dart';
import 'bp_custom_scroll_view.dart';
import 'bq_gridview.dart';
import 'br_inherited_widget.dart';
import 'bs_alert_dialog.dart';

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
        '/Button': (context) => ButtonWidget(),
        '/Flex': (context) => FlexWidget(),
        '/Wrap': (context) => WrapWidget(),
        '/Stack': (context) => StackWidget(),
        '/Row Column': (context) => RowColumnWidget(),
        '/AppBar': (context) => AppBarWidget(),
        '/CustomAppBar': (context) => CustomAppBarWidget(),
        '/ListView': (context) => ListViewWidget(),
        '/CustomScrollView': (context) => CustomScrollViewWidget(),
        '/GridView': (context) => GridViewWidget(),
        '/InheritedWidget': (context) => MyTree(),
        '/AlertDialogWidget': (context) => AlertDialogWidget(),
      },
      home: MyHomePage(title: 'Flutter组件详解'),
    );
  }
}


