import 'package:flutter/material.dart';

class AnimatedCharacter extends StatefulWidget{
  @override
  _AnimatedCharacterState createState() => _AnimatedCharacterState();
}

class _AnimatedCharacterState extends State<AnimatedCharacter> {
  double _xPosition = 0.0;
  double _yPosition = 0.0;
  double step = 50.0;

  @override
  Widget build(BuildContext context) {

    void moveCharacter(double dx, double dy) {
      double _newdx =  _xPosition + dx;
      double _newdy = _yPosition + dy;
      bool _isborder(double newdx,double newdy){
        if(newdx+50 > MediaQuery.of(context).size.width || newdy+50 > MediaQuery.of(context).size.height || newdx < 0 || newdy <0){ return true;}
        else {return false;}
      }

      setState(() {
        if(_isborder(_newdx,_newdy)) {return;}
        else { _xPosition = _newdx; _yPosition = _newdy;}
      });

    }

    return Scaffold(
      appBar: AppBar(title: Text('Pixal game')),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          child:Container(
            color: Colors.red,
            child : Stack(),
          ),
       ),
      ),
    );
  }

  Widget _ShootingItem(){
    return Container(
      width: 20,
      height: 10,
      color:Colors.amber,
      margin: EdgeInsets.symmetric(horizontal: 20),
    );
  }
}