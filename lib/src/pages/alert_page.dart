
import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.blue,
          textColor: Colors.white,
          child: Text('Abrir Alerta'),
          onPressed: () => _mostrarAlerta( context ),
        ),
      ),
    );
  }

  void _mostrarAlerta( BuildContext context ) {
    showDialog(
      context: context,
      builder: ( context ) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon( Icons.info, 
                    size: 48.0, 
                    color: Colors.lightBlue, 
                  ),
                  SizedBox(width: 10.0,),
                  Text('Hola Alerta!!!'),
                ],
              )
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Ok'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            FlatButton(
              child: Text('Ir a Avatar'),
              onPressed: () => Navigator.pushNamed(
                context, 
                'avatar'),
            )
          ],
        );
      }
    );
  }

}
