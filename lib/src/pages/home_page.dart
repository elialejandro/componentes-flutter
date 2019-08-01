
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: _crearMenu( context ),
    );
  }

  Widget _crearMenu( context ) {

    /*menuProvider.cargarMenu()
      .then( (datos) {
        print(datos);
      }); */

    return FutureBuilder(
      future: menuProvider.cargarMenu(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _crearItems( snapshot.data, context ),
        );
      },
    );
  }

  List<Widget> _crearItems( List<dynamic> items, context ) {

    return items.map((item) {
      return ListTile(
        title: Text(item['titulo']),
        onTap: () {
          Navigator.pushNamed(context, item['ruta']);
        },
      );
    }).toList();

  }
  
}

