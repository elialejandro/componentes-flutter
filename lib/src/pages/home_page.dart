
import 'package:componentes/src/pages/alert_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: _crearMenu(),
    );
  }

  ListView _crearMenu() {
    return ListView(
      children: _crearItems(),
    );
  }

  List<Widget> _crearItems() {

    return [
      ListTile(
        title: Text('Uno'),
      ),
      ListTile(
        title: Text('Dos'),
      ),
    ];

  }
  
}

