
import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: Colors.amber,
              backgroundImage: NetworkImage('http://culto.latercera.com/wp-content/uploads/2018/09/Gps3Oca-900x600.jpg'),
              radius: 20.0,
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundColor: Colors.amber,
              child: Text('DH'),
            ),
          )
        ],
      ),

    );
  }
}
