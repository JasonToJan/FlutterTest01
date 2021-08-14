import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text("Container"),
    ),
     body: Column(
       children: <Widget>[
         Container(
           margin: EdgeInsets.all(10.0),
           color: Colors.blue,
           child: Text("外边距"),
         ),
         Container(
           padding: EdgeInsets.all(10.0),
           color: Colors.blue,
           child: Text("内边距"),
         ),
         Center(
           child: Container(
             color: Colors.green,
             alignment: Alignment(0.0, 0.0),
             child: new Text("Container"),
             constraints: BoxConstraints(
               maxWidth: 300.0,
               minWidth: 100.0,
               minHeight: 100.0
             ),
           ),
         ),
         Container(
           color:Colors.blue,
           child: Text("Flutter"),
           constraints: BoxConstraints.expand(width: 250, height: 100),
         ),
         Container(
           margin: EdgeInsets.only(top: 60, left: 80),
           constraints: BoxConstraints.tightFor(width: 300, height: 150),
           decoration: BoxDecoration(
             border: Border.all(width: 3, color: Color(0xffaaaaaa)),
             boxShadow: [
               BoxShadow(
                 color: Colors.black54,
                 offset: Offset(2, 2),
                 blurRadius: 4
               )
             ],
             gradient: LinearGradient(
               colors: [Colors.red, Colors.blue, Colors.yellow]
             ),
           ),
           transform: Matrix4.rotationZ(.3),
           alignment: Alignment.center,
           child: Text(
             " 佩奇",
             style: TextStyle(
               color: Colors.white,
               fontSize: 30
             ),
           ),
         ),
       ],
     ),
   );
  }
}