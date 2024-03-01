import 'package:flutter/material.dart';
import 'package:untitled1/animatedcontainer.dart';
import 'package:untitled1/crossfade.dart';
import 'package:untitled1/heroanim.dart';

void main() {

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  TextEditingController inches=TextEditingController();
  TextEditingController feet=TextEditingController();
  TextEditingController weight=TextEditingController();
  @override
  late Animation anim;
  late AnimationController control;
  double feets=0;
  double inch=0;
  double bmi=0;
  double wgt=0;
  double height=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget DisplayContainer(Color col)
  { double h=60;
    double w=90;
    String name="";
    Color arrow=col;

    setState(() {

    });
    if(bmi<18.5&&bmi>0&&col==Colors.green)
      {
        h=100;
        w=120;
        name="Less Weight";
        setState(() {
        });
      }
  else if(bmi>18.5&&bmi<25&&col==Colors.yellow)
  {
    h=100;
    w=120;
    name="Normal Weight";
    setState(() {
    });
  }
    else if(bmi>=25&&col==Colors.red)
    {
      h=100;
      w=120;
      name="Over Weight";
      setState(() {
      });
    }
    else{arrow=Colors.white;};
    return Column(
      children:[ Container(
          height:h,
          width: w,
          color: col,
        child: Container(margin:EdgeInsets.only(left: 20,top: 30),child: (Text(name,style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),))),
        ),
      Container(height:50,width:50,decoration: BoxDecoration(color:arrow,borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))),

      )
      ]
    );
  }
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar
        (backgroundColor: Colors.black,title: Text('BMI-CALCULATOR',style: TextStyle(color: Colors.white)),centerTitle: true,),
body:
Padding(
  padding: EdgeInsets.symmetric(horizontal: 100),
  child: Center(
    child: Column(children: [
              Container(color: Colors.white,
                child:Column(
                  children:[
                    //animated container
                    Container(height: 150,width: 500,decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fill,image: AssetImage("assets/images/strong.png")))),
                    Container(color:Colors.white,child: Text("Enter Weight (kgs)",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),alignment: Alignment.topLeft,),
                SizedBox(height: 15,),
                Container(color: Colors.white,
                child:TextField(controller:weight,style:TextStyle(color: Colors.black),decoration: InputDecoration(fillColor: Colors.white,focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),hintText: "Enter Weight")),
                ),
                SizedBox(height: 15,),
                Container(color:Colors.white,child: Text("Enter Height (Fts)",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),alignment: Alignment.topLeft,),
                SizedBox(height: 15,),
                Container(color: Colors.white,
                  child:TextField(controller:feet,style:TextStyle(color: Colors.black),decoration: InputDecoration(fillColor: Colors.white,focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),hintText: "Enter Height In Feets")),
                ),
                SizedBox(height: 15,),
                Container(color:Colors.white,child: Text("Enter Inches (In)",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),alignment: Alignment.topLeft,),
                SizedBox(height: 15,),
                Container(color: Colors.white,
                  child:TextField(controller: inches,style:TextStyle(color: Colors.black),decoration: InputDecoration(fillColor: Colors.white,focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),hintText: "Enter Height In Inches")),
                ),
                    SizedBox(height: 15,),

                    ElevatedButton(style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green),alignment: Alignment.center,fixedSize: MaterialStatePropertyAll(Size(110,50),)),onPressed: (){
                      print(bmi);
                      feets=double.parse(feet.text)*0.3048;
                      inch=double.parse(inches.text)*0.0254;
                      height=(feets+inch)*(feets+inch);
                      wgt=double.parse(weight.text);
                      bmi=(wgt/height).roundToDouble();
                      setState(() {
                      });
                    }, child: Row(
                      children: [

                        SizedBox(width: 10,),Text("BMI",style: TextStyle(color:Colors.white,fontSize: 15)),Icon(Icons.man,color: Colors.white,)],
                    ))
              ]),),
      SizedBox(height: 30,),
      Row(children: [
        DisplayContainer(Colors.green),
        DisplayContainer(Colors.red),
        DisplayContainer(Colors.yellow),]),
      SizedBox(height: 20,),
      Container(child: Text("Your bmi score is $bmi",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),),
              ]),
            ),
)
    );
  }
}
