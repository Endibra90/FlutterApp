import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{
  @override
  createState()=>_ContadorPageState();

}
class _ContadorPageState extends State<ContadorPage>{
    final _estiloTexto=TextStyle(fontSize:25.4);
    int _contador=10;
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
            Text('Numero de clicks: ',style: _estiloTexto),
            Text('$_contador',style:_estiloTexto)
          ],
        )
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: _crearBotones()
    );
  }
  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton(child:Icon(Icons.exposure_zero),onPressed: _reset,),
        Expanded(child:SizedBox()),
        FloatingActionButton(child:Icon(Icons.remove),onPressed: _borrar,),
        SizedBox(width: 5.0),
        FloatingActionButton(child:Icon(Icons.add),onPressed: _agregar,),
      ],
    );
    
  } 
  void _agregar(){
    setState(()=>_contador++);
  }
  void _borrar(){
    setState((){
      _contador--;
      if(_contador<0){
        _contador=0;
      }
      });
  }
  void _reset(){
    setState(()=>_contador=0);
  }
}
