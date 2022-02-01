import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    final ButtonStyle styleTextoNormal = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 14));
    const TextStyle styleTitulo = TextStyle(fontWeight: FontWeight.bold, fontSize: 20);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add_location,
          color: Colors.pinkAccent,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Center(
        child: ElevatedButton(
          style: styleTextoNormal,
          child: const Text('Mostrar Alerta'),
          onPressed: () {
          showDialog(
            context: context, 
            builder: (BuildContext context) {
              return AlertDialog(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(22.0)),
                ),
                actions: <Widget>[
                  TextButton(
                    child: const Text("Cancelar"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  TextButton(
                    child: const Text("Ok"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
                content: Stack(
                  clipBehavior: Clip.none,
                  children: <Widget>[
                    Form(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Titulo', style: styleTitulo),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Este es el contenido de la caja de alerta'),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: FlutterLogo(size: 125,),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }
          );
        },
        )
      )
      );
  }
}