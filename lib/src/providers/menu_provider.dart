

import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  
  List<dynamic> opciones = new List<dynamic>();

  Future<List<dynamic>> cargarMenu() async {
    String data = await rootBundle.loadString('data/menu.json');
    
    Map parsedJSON = json.decode(data);
    opciones = parsedJSON['rutas'];
    // print(opciones);

    return opciones;
  }

}

final menuProvider = _MenuProvider();

