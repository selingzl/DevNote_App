import 'package:flutter/material.dart';
import 'package:proje/main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:proje/pages/anasayfa.dart';

import 'dersIcerikleri.dart';


class GirisSayfasi extends StatefulWidget {

  @override
  State<GirisSayfasi> createState() => _GirisSayfasiState();
}

class _GirisSayfasiState extends State<GirisSayfasi> {
  TextEditingController _sifreController = TextEditingController();
  String _mevcutSifre = " ";

  @override
  void initState(){
    super.initState();
    _sifreyiGetir();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("DevNote "),
      ),
      body: _buildBody(context),
    );

  }
  Widget _buildBody(BuildContext context) {
    return
      Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.blueAccent,
              Colors.redAccent,
              Colors.greenAccent,
            ],

          ), ),
        child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _mevcutSifre.isNotEmpty
                  ? "Mevcut Şifrenizle\nGiriş Yapınız"
                  : "DevNote'a Hoşgeldiniz!\nBir Sifre Belirleyin\nŞifrenizi Unutmayınız",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 28),
            ),
            SizedBox(height:20),
            TextField(
              controller: _sifreController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelText: "Şifrenizi Giriniz"),
            ),
            SizedBox(height:20),
            ElevatedButton(
              child: Text(_mevcutSifre.isNotEmpty ? "Giriş Yap" : "Kaydet"),
              onPressed: (){
                if (_mevcutSifre.isNotEmpty) {
                  _girisYap(context);
                }else {
                  _sifreyiKaydet(context);
                }
              },
            )
          ],
        ),
    ),
      );

  }

  void _sifreyiKaydet(BuildContext context) async{
    String girilenSifre = _sifreController.text;
    if (girilenSifre.isNotEmpty) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString("sifre", girilenSifre);
      _anasayfayiAc(context);


    }
  }
  void _sifreyiGetir() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String okunanDeger = await prefs.getString("sifre") ?? "";
    setState(() {
      _mevcutSifre = okunanDeger;
    });


  }
  void _girisYap(BuildContext context) {
    if (_sifreController.text == _mevcutSifre) {
      _anasayfayiAc(context);

    }
  }
  void _anasayfayiAc(BuildContext context) {
    MaterialPageRoute sayfaYolu = MaterialPageRoute(
      builder: (BuildContext context) {
        return const MyHomePage(title: "DevNote");
      },
    );
    Navigator.pushReplacement(context, sayfaYolu);

  }


}
