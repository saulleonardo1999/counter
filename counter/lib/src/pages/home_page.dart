



import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final counter = 0;

  TextStyle myTextStyle = new TextStyle(fontSize: 40);
  @override
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
            Text('Number of taps:', style: myTextStyle),
            Text('$counter', style: myTextStyle ),
          ],
        )
        ),
//        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            print('Hola Mundo');
            
          },
        ),
    );
  }
}