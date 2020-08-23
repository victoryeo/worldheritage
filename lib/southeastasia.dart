import 'package:flutter/material.dart';

class SouthEastAsia extends StatefulWidget{
  @override
  HomePage createState() => new HomePage();
}

class HomePage extends State<SouthEastAsia> {
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
          title: Text('South East Asia'),
        ),
        body: _buildSouthEastAsiaApp(),
      ),
    );
  }

  Widget _buildSouthEastAsiaApp() {
    final List<String> asia = <String>[
      'Cambodia',
      'Indonesia',
      'Laos',
      'Malaysia',
      'Myanmar',
      'Philippines',
      'Singapore',
      'Thailand',
      'Vietnam'
    ];
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
          builder: (context) => Cambodia()),
      );
    }
    else if (index == 1) {
      Navigator.push(context, MaterialPageRoute(
          builder: (context) => Indonesia()),
      );
    }
    else if (index == 2) {
      Navigator.push(context, MaterialPageRoute(
          builder: (context) => Laos()),
      );
    }
    else if (index == 3) {
      Navigator.push(context, MaterialPageRoute(
          builder: (context) => Malaysia()),
      );
    }
    else if (index == 4) {
      Navigator.push(context, MaterialPageRoute(
          builder: (context) => Myanmar()),
      );
    }
  }
}

class Cambodia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.dehaze)),
              Tab(icon: Icon(Icons.map)),
            ],
          ),
          title: Text('Cambodia'),
        ),
        body: _buildCambodiaApp(),
      ),
    );
  }
  Widget _buildCambodiaApp() {
    final List<String> asia = <String>[
      'Angkor',
      'Preah Vihear',
      'Sambor Prei Kuk'
    ];
    final List<String> imagelist = <String>[
      'cambodia_angkor.jpg',
      'cambodia_preah.jpg',
      'cambodia_sambor.jpg'
    ];
    return (
        TabBarView(
            children: [
              ListView.separated(
                  separatorBuilder: (context, index) => Divider(color: Colors.black),
                  padding: const EdgeInsets.all(6),
                  itemCount: asia.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () => navigateToPage(context, index),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        alignment: Alignment.centerLeft,
                        height: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image:AssetImage('assets/images/'+imagelist[index])
                          ),
                        ),
                        child: Column(children: <Widget>[
                          Text(asia[index]),
                        ],)
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

    }
    else if (index == 1) {

    }
    else if (index == 2) {

    }
  }
}

class Indonesia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.dehaze)),
              Tab(icon: Icon(Icons.map)),
            ],
          ),
          title: Text('Indonesia'),
        ),
        body: _buildCambodiaApp(),
      ),
    );
  }
  Widget _buildCambodiaApp() {
    final List<String> asia = <String>[
      'Bali Cultural Landscape',
      'Borobudur Temple',
      'Komodo National Park',
      'Lorentz National Park',
      'Prambanan Temple',
      'Sangiran Early Man',
      'Sumatra Tropical Rainforest',
      'Ujung Kulon National Park'
    ];
    final List<String> imagelist = <String>[
      'indon_bali.jpg',
      'indon_borobudur.jpg',
      'indon_komodo.jpg',
      'indon_lorentz.jpg',
      'indon_prambanan.jpg',
      'indon_sangiran.jpg',
      'indon_sumatra.jpg',
      'indon_ujung.jpg'
    ];
    return (
        TabBarView(
            children: [
              ListView.separated(
                  separatorBuilder: (context, index) => Divider(color: Colors.black),
                  padding: const EdgeInsets.all(0),
                  itemCount: asia.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () => navigateToPage(context, index),
                      child: Container(
                          padding: const EdgeInsets.all(8),
                          alignment: Alignment.centerLeft,
                          height: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              alignment: Alignment.centerRight,
                              image:AssetImage('assets/images/'+imagelist[index])
                            ),
                          ),
                          child: Column(children: <Widget>[
                            Text(
                                asia[index],
                            )
                          ],)
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

    }
    else if (index == 1) {

    }
    else if (index == 2) {

    }
  }
}


class Laos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.dehaze)),
              Tab(icon: Icon(Icons.map)),
            ],
          ),
          title: Text('Laos'),
        ),
        body: _buildLaosApp(),
      ),
    );
  }
  Widget _buildLaosApp() {
    final List<String> asia = <String>[
      'Luang Prabang',
      'PVat Phou',
    ];
    final List<String> imagelist = <String>[
      'laos_luang.jpg',
      'laos_vatphou.jpg',
    ];
    return (
        TabBarView(
            children: [
              ListView.separated(
                  separatorBuilder: (context, index) => Divider(color: Colors.black),
                  padding: const EdgeInsets.all(6),
                  itemCount: asia.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () => navigateToPage(context, index),
                      child: Container(
                          padding: const EdgeInsets.all(8),
                          alignment: Alignment.centerLeft,
                          height: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image:AssetImage('assets/images/'+imagelist[index])
                            ),
                          ),
                          child: Column(children: <Widget>[
                            Text(asia[index]),
                          ],)
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

    }
    else if (index == 1) {

    }
    else if (index == 2) {

    }
  }
}

class Malaysia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.dehaze)),
              Tab(icon: Icon(Icons.map)),
            ],
          ),
          title: Text('Malaysia'),
        ),
        body: _buildMalaysiaApp(),
      ),
    );
  }
  Widget _buildMalaysiaApp() {
    final List<String> asia = <String>[
      'Kinabalu',
      'Lenggong',
      'Melaka and Penang',
      'Mulu'
    ];
    final List<String> imagelist = <String>[
      'mal_kinabalu.jpg',
      'mal_lenggong.jpg',
      'mal_melaka.jpg',
      'mal_mulu.jpg'
    ];
    return (
        TabBarView(
            children: [
              ListView.separated(
                  separatorBuilder: (context, index) => Divider(color: Colors.black),
                  padding: const EdgeInsets.all(6),
                  itemCount: asia.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () => navigateToPage(context, index),
                      child: Container(
                          padding: const EdgeInsets.all(8),
                          alignment: Alignment.centerLeft,
                          height: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image:AssetImage('assets/images/'+imagelist[index])
                            ),
                          ),
                          child: Column(children: <Widget>[
                            Text(asia[index]),
                          ],)
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

    }
    else if (index == 1) {

    }
    else if (index == 2) {

    }
  }
}

class Myanmar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.dehaze)),
              Tab(icon: Icon(Icons.map)),
            ],
          ),
          title: Text('Myanmar'),
        ),
        body: _buildMyanmarApp(),
      ),
    );
  }
  Widget _buildMyanmarApp() {
    final List<String> asia = <String>[
      'Pyu'
    ];
    final List<String> imagelist = <String>[
      'myanmar_pyu.jpg'
    ];
    return (
        TabBarView(
            children: [
              ListView.separated(
                  separatorBuilder: (context, index) => Divider(color: Colors.black),
                  padding: const EdgeInsets.all(6),
                  itemCount: asia.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () => navigateToPage(context, index),
                      child: Container(
                          padding: const EdgeInsets.all(8),
                          alignment: Alignment.centerLeft,
                          height: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image:AssetImage('assets/images/'+imagelist[index])
                            ),
                          ),
                          child: Column(children: <Widget>[
                            Text(asia[index]),
                          ],)
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

    }
    else if (index == 1) {

    }
    else if (index == 2) {

    }
  }
}

