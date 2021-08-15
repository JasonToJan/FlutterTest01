import 'package:flutter/material.dart';

class FlexWidget extends StatefulWidget {

  FlexWidget({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FlexWidgetState createState() => _FlexWidgetState();

}

class _FlexWidgetState extends State<FlexWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flex"),
      ),
      body: Column(
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              FlutterLogo(
                size: 40,
              ),
              SizedBox(
                width: 5,
              ),
              Flexible(
                fit: FlexFit.loose,
                child: Container(
                  child: Text("我会自己换行啊哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈"),
                ),
              ),
            ],
          ),
          Container(
            height: 200,
            child: Flex(
              direction: Axis.vertical,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 120,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}