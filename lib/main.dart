import 'package:flutter/material.dart';
   import 'package:audioplayers/audio_cache.dart';
//import 'package:english_words/english_words.dart';
 
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
final pl=AudioCache();
Widget buildkey(int poi,Color col)
{
  double res=(poi*9).toDouble();
  return Expanded(  
        child: Padding(
          padding:EdgeInsets.symmetric(vertical:2,horizontal:res),
          child: FlatButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            onPressed: (){
          pl.play("note$poi.wav");
            },color: col,),
        ),
              );
}  
Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child:Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                // height:dou,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image:AssetImage("assets/wood.jpg")))
                ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                   //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:[
                    buildkey(1,Colors.red),
                    buildkey(2,Colors.amber),
                    buildkey(3,Colors.purple),
                    buildkey(4,Colors.teal),
                    buildkey(5,Colors.pink),
                    buildkey(6,Colors.blue),
                    buildkey(7,Colors.black), 
                    ]
                ),
              ),
            ],
          ),
        ),
      )
    );
}
}
