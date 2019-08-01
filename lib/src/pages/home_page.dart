
import 'package:componentes/src/pages/alert_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Abrir AlertPage'),
          color: Colors.indigo,
          textColor: Colors.white,
          onPressed: () {
            // final route = MaterialPageRoute(
            //   builder: (context) {
            //     return AlertPage();
            //   }
            // );

            // Navigator.push(context, route);

            Navigator.pushNamed(context, 'alert');

          },
        ),
      ),
    );
  }
  
}

