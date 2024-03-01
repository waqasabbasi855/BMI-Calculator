import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class crossfade extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return crossfad();
  }
}
class crossfad extends State<crossfade>
{
  Color? c;
  bool check=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Cross Fade'),),
    body: InkWell(
      onTap: () {
        if(check==true)
          {
            c=Colors.red;
            check=false;
            setState(() {
            });
          }
        else if(check==false)
          {
            check=true;
            c=Colors.cyan;
            setState(() {

            });
          }
      },
      child: AnimatedCrossFade(
        duration: Duration(seconds: 160),
        firstChild: Container(
          color: c,
          height: 50,
          width: 50,
        ),
        secondChild:Container(
          color: c,
          height: 50,
          width: 50,),
        firstCurve: Curves.bounceIn,
        secondCurve: Curves.bounceOut,
        crossFadeState: check? CrossFadeState.showFirst:CrossFadeState.showSecond,

      ),
    ));
  }


}