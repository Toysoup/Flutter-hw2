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
       child: Stack(
         alignment: Alignment.center,
         children: [
          Positioned(
            left:MediaQuery
                .of(context)
                .size
                .width / 2 + _xPosition,
            top: MediaQuery
                .of(context)
                .size
                .height / 2 + _yPosition,
            child: Container(

              width: 50,
              height: 50,
              color: Colors.blue,

            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Row(
              children: [
                ElevatedButton(onPressed: () => moveCharacter(-step, 0),
                    child: Icon(Icons.arrow_back)),
                SizedBox(width: 10,),
                Column (
                  children:[
                    ElevatedButton(onPressed: () => moveCharacter(0, -step),
                        child: Icon(Icons.arrow_upward)),
                    SizedBox(height: 10,),
                    ElevatedButton(onPressed: () => moveCharacter(0, step),
                        child: Icon(Icons.arrow_downward)),
                  ],
                ),
                SizedBox(width: 10,),
                ElevatedButton(onPressed: () => moveCharacter(step, 0),
                    child: Icon(Icons.arrow_forward)),
                SizedBox(width: 10,),
                ElevatedButton(onPressed: () => _ShootingItem(), child: Icon(Icons.gps_not_fixed))
              ],
            ),
          ),

         ],
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