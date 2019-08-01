
import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  // const HomePageTemp({Key key}) : super(key: key);

  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page Temp'),
      ),
      body: ListView(
        children: _crearListaCorta(),
      ),
    );
  }

  // List<Widget> _crearLista() {

  //   List<Widget> resultado = [];

  //   for (var opt in opciones) {
  //     resultado.add(ListTile(
  //       title: Text(opt),
  //     ));
  //     resultado.add(Divider());
  //   }

  //   return resultado;
  // }

  List<Widget> _crearListaCorta() {
    return opciones.map( ( String opcion ) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(opcion),
            leading: Icon( Icons.account_circle ),
            trailing: Icon( Icons.keyboard_arrow_right ),
            onTap: () {},
          ),
          Divider(),
        ],
      );
    }).toList();
  }

}

