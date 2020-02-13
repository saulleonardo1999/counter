import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CounterPage extends StatefulWidget{
  @override
  createState() => _CounterPageState();
  
}



class _CounterPageState extends State <CounterPage>{
  int _counter = 0;

  final _myTextStyle = new TextStyle(fontSize: 40);
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('CounterApp', style: TextStyle( fontSize: 30 )),
        centerTitle: true,
      ),
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Number of taps:', style: _myTextStyle),
            Text('$_counter', style: _myTextStyle ),
          ],
        )
        ),
//        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: _createButtons()
    );
  }
  Widget _createButtons(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
         SizedBox(width: 40.0),
        FloatingActionButton( child: Icon(Icons.exposure_zero), onPressed: _reset),
       Expanded(child: SizedBox()),
        FloatingActionButton( child: Icon(Icons.remove), onPressed: _substraction),
         SizedBox(width: 10.0),
        FloatingActionButton( child: Icon(Icons.add), onPressed: _addition ),
      ],
    );
  }
  void _addition(){
      setState(() => _counter++);
    }

  void _substraction(){
    setState(()=> _counter--);
  }

  void _reset(){
    setState(()=> _counter=0);
  }

}