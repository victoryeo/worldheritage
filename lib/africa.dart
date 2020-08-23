import 'package:flutter/material.dart';

class Africa extends StatefulWidget{
  @override
  HomePage createState() => new HomePage();
}
class HomePage extends State<Africa>{
  @override
  Widget build(BuildContext context) {
    Color hexToColor(String code) {
      return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
    }
    return Scaffold(
      backgroundColor: hexToColor('#654321'),
      appBar: PreferredSize(
        child: AppBar(
          title: Row(
            children: <Widget>[
              Container(padding: const EdgeInsets.all(8), child: Text('Africa'))
            ],
          ),
        ),
        preferredSize: Size.fromHeight(60.0)
      ),
    );
  }
}
