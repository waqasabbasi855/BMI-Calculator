import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class animatedcont extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
 return animatecont();
  }
}
class animatecont extends State<animatedcont>
{
  Color? col;
  int counter=1;
  double op=1.0;
  @override
  Widget build(BuildContext context) {
   return Scaffold(appBar: AppBar(title: Text("Animated Container",)),
   body: InkWell(
  onTap: () {

    if(counter==1)
      {
        col=Colors.green;
        counter=0;
        op=0.0;
        setState(() {

        });
      }
    else if(counter==0)
    {
      col=Colors.red;
      counter=1;
      op=1.0;
      setState(() {

      });
    }
  },
  child: AnimatedOpacity(
opacity:op,
  duration: Duration(seconds: 5),child: Container(color: col,height: 50,),)),

   );
  }
}



