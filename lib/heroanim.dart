import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/crossfade.dart';
import 'package:untitled1/heropage.dart';

class heroan extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
 return heroanim();
  }
}
class heroanim extends State<heroan>
{
  @override
  Widget build(BuildContext context) {
  return Scaffold(appBar:AppBar(title: Text("Hero"),),
  body: InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder:(context) {
          return page();
        },));},
      child: Hero(tag: "Gallery", child: Image.asset("assets/images/ffrst.jpg",width: 50,height: 50,))),
  
  
  
  );
  }}