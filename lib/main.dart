import 'package:proje/pages/dersIcerikleri.dart';
import 'package:flutter/material.dart';

import 'pages/giris_sayfasi.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GirisSayfasi(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.blueAccent,
              Colors.redAccent,
            ],

        ), ),

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  // Stroked text as border.
                  Text(
                    'Eğitim Kataloğu',
                    style: TextStyle(
                      fontSize: 40,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 6
                        ..color = Colors.indigo,
                    ),
                  ),
                  // Solid text as fill.
                  Text(
                    'Eğitim Kataloğu',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                ],
              ),

              ListTile(
                title: const Text('Flutter  İle Uygulama Geliştirme ',
                  style: TextStyle(fontSize: 19),
                ),
                leading: const Icon(
                  Icons.circle,
                  color: Colors.blue,
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const EgitimIcerigi(dersAdi: "Flutter"),
                  ));
                },
              ),
              ListTile(
                title: const Text('Unity İle Oyun  Geliştirme ',
                  style: TextStyle(fontSize: 19),
                ),
                leading: const Icon(
                  Icons.circle,
                  color: Colors.red,
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const EgitimIcerigi(dersAdi: "Unity"),
                  ));
                },
              ),
              ListTile(
                title: const Text('Proje Yönetimi Eğitimleri ',
                  style: TextStyle(fontSize: 19),
                ),
                leading: const Icon(
                  Icons.circle,
                  color: Colors.green,
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const EgitimIcerigi(dersAdi: "Proje"),
                  ));

                },
              ),
              ListTile(
                title: const Text('Girişimcilik Eğitimleri ',
                  style: TextStyle(fontSize: 19),),
                leading: const Icon(
                  Icons.circle,
                  color: Colors.yellow,
                ),
                onTap: () {

                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const EgitimIcerigi(dersAdi: "Girişimcilik"),
                  ));



                },
              ),
              ListTile(
                title: const Text('Yazılımcılar İçin İngilizce ',
                  style: TextStyle(fontSize: 19),),
                leading: const Icon(
                  Icons.circle,
                  color: Colors.white,
                ),
                onTap: () {

                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const EgitimIcerigi(dersAdi: "İngilizce"),
                  ));



                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}