import 'package:flutter/material.dart';

class TextImageIconWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container"),
      ),
      body: Column(
        children: <Widget>[
          Image(image: AssetImage("images/image_icon.png"), width: 50.0),
          Image(
            image: NetworkImage("https://www.phei.com.cn/templates/images/img_logo.jpg"),
            width: 120,
          )
        ],
      ),
    );
  }

}