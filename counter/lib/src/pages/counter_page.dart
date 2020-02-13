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
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            
            _counter++;
            setState((){

            });
          },
        ),
    );
  }

}