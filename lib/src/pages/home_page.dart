import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final estiloTexto = new TextStyle(
                fontSize: 25
              );

  final conteo = 10;

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
              style: estiloTexto
            ),
            Text('$conteo',
              style: estiloTexto
            )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print('Hola Mundo');
        },
        child: Icon(
          Icons.add
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

    );
  }
}