import 'package:flutter/material.dart';
import 'AnimatedCharacter.dart';
import 'screen2.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  const MyApp ({Key ?key}) : super(key:key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
      appBar: AppBar(title: Text('Pixal rpg game'),),
      body: Homepagestate(),
     ),
    );
  }
}
class Homepagestate  extends StatefulWidget {
  @override
  State<Homepagestate> createState() => _HomepageState();
}

class _HomepageState extends State<Homepagestate> {
  @override
  Widget build(BuildContext context) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(onPressed: () => Navigator.push(context,MaterialPageRoute(builder:(context) => screen2())), child: Text("Go to Screen2")),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () => Navigator.push(context,MaterialPageRoute(builder: (context)=> AnimatedCharacter())), child: Text("Play start")),
          ],
        ),
    );
  }
}


