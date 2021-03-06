import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _ContadorPageState();
  }

}

//Es privado _
class _ContadorPageState extends State<ContadorPage> {

  final _estiloTexto = new TextStyle(
                fontSize: 25
              );

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Título'),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Numero de clicks:',
              style: _estiloTexto
            ),
            Text('$_conteo',
              style: _estiloTexto
            )
          ],
        ),
      ),

      floatingActionButton: _crearBotones()

    );
  }

  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: 30,
        ),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: _colocarCero, 
        ),
        Expanded(
          child:SizedBox(),
          ),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: _restar, 
        ),
        SizedBox(
          width: 10,
        ),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _agregar, 
        ),
       
      ],
    );
  }

  void _agregar(){
    setState(() {
      _conteo++;
    });
  }

  void _restar(){
    setState(() {
      _conteo--;
    });
  }

  void _colocarCero(){
    setState(() {
      _conteo = 0;
    });
  }

}