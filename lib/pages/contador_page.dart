import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{
  @override
  createState()=>_ContadorPageState();
}
class _ContadorPageState extends State<ContadorPage>{
    var _list=<Contador>[];
    @override
  /*Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Titulo"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body:SingleChildScrollView( 
        child: Column(
             children: <Widget>[
               for (var name in _list)...[
               ListTile(
                  title: Text(name.nombre,textAlign: TextAlign.center,style: TextStyle(fontSize:25),),
                  subtitle:Text(name.valor.toString(),textAlign: TextAlign.center, style: TextStyle(fontSize:25),),
                  leading:FloatingActionButton(
                    child:Icon(Icons.remove),
                    backgroundColor: Colors.red,
                    onPressed:()=>_borrar(name)),
                  trailing: FloatingActionButton(
                    child:Icon(Icons.add),
                    backgroundColor: Colors.green,
                    onPressed:()=>_anadir(name)),                  
                ),  
                Divider(
                  color: Colors.black,
                  height: 20,
                  thickness: 5,
                  indent: 20,
                  endIndent: 0,
                )
               ]
             ],
      ),
    ),
       floatingActionButton: _crearBotones()
  );
  }*/
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Titulo"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body:ListView.builder(
              itemCount:_list.length,
              itemBuilder:(context,index){
              return Column(
                children:<Widget>[
                  ListTile(
                  title: Text(_list[index].nombre,textAlign: TextAlign.center,style: TextStyle(fontSize:25),),
                  subtitle:Text(_list[index].valor.toString(),textAlign: TextAlign.center, style: TextStyle(fontSize:25),),
                  leading:FloatingActionButton(
                    child:Icon(Icons.remove),
                    backgroundColor: Colors.red,
                    onPressed:()=>_borrar(_list[index])),
                  trailing: FloatingActionButton(
                    child:Icon(Icons.add),
                    backgroundColor: Colors.green,
                    onPressed:()=>_anadir(_list[index])), 
                ),
                Divider(
                  color: Colors.black,
                  height: 20,
                  thickness: 5,
                  indent: 20,
                  endIndent: 0,
                ),
                ]
              );
              }
      ),
      floatingActionButton: _crearBotones()
    );
  }
  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
          FloatingActionButton(child:Icon(Icons.add),onPressed: _agregar,backgroundColor: Colors.black,),
      ],
    );
  }
  void _agregar(){
    _list.add(Contador('Contador',0));
    setState((){});
  }
  void _borrar(Contador contador){
    contador.valor--;
    setState((){});
  }
   void _anadir(Contador contador){
    contador.valor++;
    setState((){});
  }
}
class Contador {
  String nombre;
  int valor;
  Contador(this.nombre, this.valor);
}