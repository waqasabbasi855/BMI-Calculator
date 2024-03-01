import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class page extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return pagehero();
  }
  
  
}
class pagehero extends State<page>
{
  @override
  Widget build(BuildContext context) {
 return Scaffold(appBar: AppBar(title: Text("HeroPage")),
 body: Hero(tag: "Gallery", child:Image(image: AssetImage("assets/images/ffrst.jpg"))),
 
 
 );
  }
  
  
}