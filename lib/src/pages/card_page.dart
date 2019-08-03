
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card page'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _crearTarjetaUno(),
          SizedBox(height: 10.0,),
          _crearTarjetaDos(),
          SizedBox(height: 10.0,),
          _crearTarjetaUno(),
          SizedBox(height: 10.0,),
          _crearTarjetaDos(),
          SizedBox(height: 10.0,),
          _crearTarjetaUno(),
          SizedBox(height: 10.0,),
          _crearTarjetaDos(),
          SizedBox(height: 10.0,),
          _crearTarjetaUno(),
          SizedBox(height: 10.0,),
          _crearTarjetaDos(),
          SizedBox(height: 10.0,),
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

  _crearTarjetaDos() {
    return Card(
      elevation: 10.0,
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage('https://cdn.mos.cms.futurecdn.net/FUE7XiFApEqWZQ85wYcAfM.jpg'),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Paisaje'),
          ),
        ],
      ),
    );
  }

  

}

