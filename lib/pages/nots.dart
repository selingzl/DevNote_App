import 'package:flutter/material.dart';

class Nots extends StatefulWidget {
  Nots({Key? key}) : super(key: key);

  @override
  State<Nots> createState() => _NotsState();
}

class _NotsState extends State<Nots> {
  final notEkle = TextEditingController();
  List<String> notEklemeListesi = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            color: Colors.blueGrey.shade200,
            child: TextField(
              cursorColor: Colors.red,
              controller: notEkle,
              minLines: 10,
              maxLines: 10,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  notEklemeListesi.add(notEkle.text);
                  notEkle.text = '';

                });
              },
              child: Text("Notunu Ekle")),
          Flexible(
            child: ListView.builder(
              itemCount: notEklemeListesi.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text('Notunuz : ' + notEklemeListesi[index]),
                  Divider(
                color: Colors.red,
                thickness: 3,
                ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}