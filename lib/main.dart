import 'package:flutter/material.dart';
import 'africa.dart' as africa;
import 'asia.dart' as asia;
import 'europe.dart' as europe;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HeritageApp(),
      routes: <String, WidgetBuilder>{
        "/africa": (BuildContext context)=> new africa.Africa(),
        "/asia": (BuildContext context)=> new asia.Asia(),
        "/europe": (BuildContext context)=> new europe.Europe(),
      }
    );
  }
}

class HeritageApp extends StatefulWidget {
  @override
  HeritageAppState createState() => new HeritageAppState();
}

class HeritageAppState extends State<HeritageApp> {
  final List<String> continent = <String>['Africa', 'America', 'Australia', 'Asia', 'Europe'];
  @override
  Widget build(BuildContext context) {
    Color hexToColor(String code) {
      return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
    }
    return Scaffold(
      backgroundColor: hexToColor('#FD1124'),
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.dehaze)),
                Tab(icon: Icon(Icons.map)),
              ],
            ),
            title: Text('World Heritage'),
          ),
          body: TabBarView(
            children: [
              ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: continent.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () => navigateToPage(context, index),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        height: 50,
                        child: Center(child: Text(continent[index])),
                      ),
                    );
                  }
              ),
              Icon(Icons.directions_transit),
            ],
          ),
        ),
      ),
    );
  }

  Future navigateToPage(context, index) async {
    if (index == 0)
      Navigator.of(context).pushNamed("/africa");
    else if (index == 3)
      Navigator.of(context).pushNamed("/asia");
    else if (index == 4)
      Navigator.of(context).pushNamed("/europe");
  }
}
