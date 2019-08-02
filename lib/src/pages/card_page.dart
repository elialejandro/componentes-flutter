
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card page'),
      ),
      body: ListView(
        children: <Widget>[
          _crearTarjetaUno(),
        ],
      ),
    );
  }

  _crearTarjetaUno() {
    return Card(
      elevation: 10.0,
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon ( 
              Icons.photo_album, 
              color: Colors.purple, ),
            title: Text('Tarjeta uno'),
            subtitle: Text('Soy un subtitulo'),
          ),
        ],
      ),
    );
  }
}

