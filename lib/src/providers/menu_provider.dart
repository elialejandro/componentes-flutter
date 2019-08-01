

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  
  List<dynamic> opciones = new List<dynamic>();

  _MenuProvider() {
    cargarMenu();
  }

  cargarMenu() {
    rootBundle.loadString('data/menu.json')
      .then( (data) {
        print(data);
      });
  }

}

final menuProvider = _MenuProvider();

