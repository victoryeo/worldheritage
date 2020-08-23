import 'package:flutter/material.dart';

class Europe extends StatefulWidget{
  @override
  HomePage createState() => new HomePage();
}
class HomePage extends State<Europe>{
  @override
  Widget build(BuildContext context) {
    Color hexToColor(String code) {
      return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
    }
    return Scaffold(
      backgroundColor: hexToColor('#FDFDFD'),
      appBar: PreferredSize(
        child: AppBar(
          title: Row(
            children: <Widget>[
              Container(padding: const EdgeInsets.all(8), child: Text('Europe'))
            ],
          ),
        ),
        preferredSize: Size.fromHeight(60.0)
      ),
    );
  }
}
