import 'package:flutter/material.dart';

/// Widget之间数据共享方案

class Item {
  String reference;
  Item(this.reference);
}


class MyInheritedWidget extends StatefulWidget {

  final Widget child;

  MyInheritedWidget({Key key, this.child}) : super(key: key);

  @override
  MyInheritedWidgetState createState() => MyInheritedWidgetState();

  static MyInheritedWidgetState of(
      [BuildContext context, bool rebuild = true]) {
    return (rebuild
        ? context.dependOnInheritedWidgetOfExactType(aspect:_MyInherited) as _MyInherited
        : context.findAncestorWidgetOfExactType<_MyInherited>())
        .data;
  }
}

class MyInheritedWidgetState extends State<MyInheritedWidget>{

  List<Item> _items = <Item>[];

  int get itemsCount => _items.length;

  void addItem(String reference) {
    setState(() {
      _items.add(new Item(reference));
    });
  }

  @override
  Widget build(BuildContext context) {
    return new _MyInherited(
      data: this,
      child: widget.child,
    );
  }

}

class _MyInherited extends InheritedWidget {

  final MyInheritedWidgetState data;

  _MyInherited({Key key, @required Widget child, @required this.data}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
}

//--------------------其它------------------------------------------------------
class MyTree extends StatefulWidget {
  @override
  _MyTreeState createState() => new _MyTreeState();
}

class _MyTreeState extends State<MyTree> {
  @override
  Widget build(BuildContext context) {
    return MyInheritedWidget(
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text('Title'),
        ),
        body: new Column(
          children: <Widget>[
            new WidgetA(),
            new Container(
              child: new Row(
                children: <Widget>[
                  new Icon(Icons.shopping_cart),
                  new WidgetB(),
                  new WidgetC(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MyInheritedWidgetState state = MyInheritedWidget.of(context, false);  // 防止WidgetA被rebuild
    return new Container(
      child: new RaisedButton(
        child: new Text('Add Item'),
        onPressed: () {
          state.addItem('new item');
        },
      ),
    );
  }
}

class WidgetB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MyInheritedWidgetState state = MyInheritedWidget.of(context);
    return new Container(
      width: 400,
      height: 200,
      child: new Text('${state.itemsCount}'),
    );
  }
}

class WidgetC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: 400,
      height: 200,
      child: new Text('I am Widget C'),
    ) ;
  }
}


