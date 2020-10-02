import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatelessWidget{

  final estiloTexto=TextStyle(fontSize:25.4);
  int contador=10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Titulo"),
        centerTitle: true,
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            Text('Numero de clicks: ',style: estiloTexto),
            Text('$contador',style:estiloTexto)
          ]
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton:FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          contador+=1;
        },
      ),
    );
  }
}