import 'package:flutter/material.dart';
import 'southeastasia.dart' as southeastasia;

class Asia extends StatefulWidget{
  @override
  HomePage createState() => new HomePage();
}
class HomePage extends State<Asia>{
  @override
  Widget build(BuildContext context) {
    Color hexToColor(String code) {
      return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
    }
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: hexToColor('#FDDA24'),
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
             Tab(icon: Icon(Icons.dehaze)),
             Tab(icon: Icon(Icons.map)),
            ],
          ),
          title: Text('Asia'),
        ),
        body: _buildAsiaApp(),
      ),
    );
  }

  Widget _buildAsiaApp() {
    final List<String> asia = <String>['Central Asia','North Asia', 'South Asia', 'South East Asia', 'West Asia'];
    return (
          TabBarView(
            children: [
              ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: asia.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () => navigateToPage(context, index),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      height: 50,
                      child: Center(child: Text(asia[index])),
                    ),
                  );
                }
              ),
              Icon(Icons.directions_transit),
            ]
          )
    );
  }

  Future navigateToPage(context, index) async {
    if (index == 0) {
      Navigator.push(context, MaterialPageRoute(
          builder: (context) => CentralAsia()),
      );
    }
    else if (index == 1) {
      Navigator.push(context, MaterialPageRoute(
          builder: (context) => NorthAsia()),
      );
    }
    else if (index == 2) {
      Navigator.push(context, MaterialPageRoute(
          builder: (context) => SouthAsia()),
      );
    }
    else if (index == 3) {
      Navigator.push(context, MaterialPageRoute(
          builder: (context) => southeastasia.SouthEastAsia()),
      );
    }
    else if (index == 4) {
      Navigator.push(context, MaterialPageRoute(
          builder: (context) => WestAsia()),
      );
    }
  }
}

class CentralAsia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Central Asia"),
      ),
    );
  }
}

class NorthAsia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("North Asia"),
      ),
    );
  }
}

class SouthAsia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("South Asia"),
      ),
    );
  }
}

class WestAsia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("West Asia"),
      ),
    );
  }
}



