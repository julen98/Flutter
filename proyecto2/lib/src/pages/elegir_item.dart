import 'package:flutter/material.dart';

class ElegirItem extends StatefulWidget {
  const ElegirItem({Key? key}) : super(key: key);

  @override
  _ElegirItemState createState() => _ElegirItemState();
}

class _ElegirItemState extends State<ElegirItem> {
  final icons = [
    Icons.add_alert,
    Icons.accessibility,
    Icons.folder_open,
    Icons.donut_large,
    Icons.input,
    Icons.tune,
    Icons.list,
  ];
  final items = [
    'Alertas',
    'Avatars',
    'Cards',
    'Container',
    'Inputs',
    'Sliders',
    'Listas',
  ];

  List<Widget> _crearItems() {
    final lista = <Widget>[];
    int i = 0;
    // ignore: avoid_function_literals_in_foreach_calls
    items.forEach((element) {
      final tempWidget = ListTile(
        title: Text(element),
        onTap: () {
          Navigator.pushNamed(context, element);
        },
        leading: Icon(icons[i], color: Colors.blue),
        trailing: const Icon(Icons.navigate_next, color: Colors.blue),
        subtitle: Text(element),
      );
      lista.add(tempWidget);
      lista.add(
        Divider(
          thickness: 2,
          color: Colors.grey[300],
          height: 5,
          indent: 10,
          endIndent: 10,
        ),
      );
      i++;
    });
    return lista;
  }

  void _anadirItem() {
    setState(() {
      items.insert(0, 'Nuevo Item');
      icons.insert(0, Icons.ac_unit);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Componentes'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: _crearItems(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _anadirItem();
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
