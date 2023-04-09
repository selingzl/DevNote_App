
import 'package:flutter/material.dart';

class SoruCevap extends StatefulWidget {
  const SoruCevap({Key? key}) : super(key: key);

  @override
  State<SoruCevap> createState() => _SoruCevapState();
}

class _SoruCevapState extends State<SoruCevap> {
  List<String> soruTanimListesi = [];
  List<String> cevaplarListesi = [];

  final sorutanimi = TextEditingController();
  final sorucevabi = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(
            "Sorunuzu Sorabilirsiniz",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextField(
            controller: sorutanimi,
            minLines: 1,
            maxLines: 1,
          ),
          TextField(
            controller: sorucevabi,
            minLines: 1,
            maxLines: 1,
          ),
          Text(
            "Soruyu Cevaplayabilirsiniz",
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                soruTanimListesi.add(sorutanimi.text);
                cevaplarListesi.add(sorucevabi.text);
                sorutanimi.text = '';
                sorucevabi.text = '';
              });
            },
            child: Text("Kaydet"),
          ),
          Flexible(
            child: ListView.builder(
              itemCount: soruTanimListesi.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text('Sorunun Tanımı : ' + soruTanimListesi[index]),
                    Text('Sorunun Cevabı : ' + cevaplarListesi[index]),
                    Divider(
                      color: Colors.lightBlue,
                      thickness: 3,
                    )
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}