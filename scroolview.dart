import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class listscroll extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return scroll();
  }


}
class scroll extends State<listscroll>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("scrollview"),),
    body: ListWheelScrollView(itemExtent: 200, children: [
      Container(color: Colors.red,width: 100,),
      Container(color: Colors.green,width: 100,),
      Container(color: Colors.black,width: 100,),
      Container(color: Colors.blue,width: 100,),
    ]),





    );
  }


}