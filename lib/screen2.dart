import 'package:flutter/material.dart';

class screen2 extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Screen2")),
      body: Center(
        child: Column (
          children: [
            ElevatedButton(onPressed: ()=> Navigator.of(context).pop(), child: Text("back"))
          ],
        ),
      ),
    );
  }
}