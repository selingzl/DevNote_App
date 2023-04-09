import 'package:proje/models/icerikModel.dart';
import 'package:flutter/material.dart';
import 'package:proje/pages/sorucevap.dart';

import 'nots.dart';

class EgitimIcerigi extends StatefulWidget {
  final String dersAdi;

  const EgitimIcerigi({Key? key, required this.dersAdi}) : super(key: key);

  @override
  State<EgitimIcerigi> createState() => _EgitimIcerigiState();
}

class _EgitimIcerigiState extends State<EgitimIcerigi> {
  List<IcerikModel> flutterIcerikler = [

    IcerikModel(
      konuBasligi: "Flutter Kurulum",
      konuNotu: '',
      soruCevap: 'Flutter Kurulumu Nasıl Yapılır? ',
    ),
    IcerikModel(
      konuBasligi: "Dart Dilini ve IDE'yi Tanıma",
      konuNotu: '',
      soruCevap: 'Dart Nedir?',
    ),
    IcerikModel(
      konuBasligi: "Dart Dilini Derinlemesine Tanıma",
      konuNotu: '',
      soruCevap: 'Dartın farkı ne ?',
    ),
    IcerikModel(
      konuBasligi: "Dart ile Nesne Tabanlı Programlama",
      konuNotu: '',
      soruCevap: 'Nesne tabanlı programlama ne anlama geliyor ?',
    ),
    IcerikModel(
      konuBasligi: "Collection'lar",
      konuNotu: '',
      soruCevap: 'Collection ne ?',
    ),
    IcerikModel(
      konuBasligi: "Fluttera Giriş",
      konuNotu: '',
      soruCevap: 'Flutterı diğerlerinden ayıran ne ?',
    ),
    IcerikModel(
      konuBasligi: "StatefulWidget ve StatelessWidget",
      konuNotu: '',
      soruCevap: 'StatefulWidget ve StatelessWidget ne?',
    ),
    IcerikModel(
      konuBasligi: "Widget Ağacı",
      konuNotu: '',
      soruCevap: 'Widget ağacı nasıl oluşturulur ?',
    ),
    IcerikModel(
      konuBasligi: "Layout",
      konuNotu: '',
      soruCevap: 'Layout ne anlama geliyor ?',
    ),
    IcerikModel(
      konuBasligi: "Navigation",
      konuNotu: '',
      soruCevap: 'Navigation nedir ?',
    ),
    IcerikModel(
      konuBasligi: "Asenkron Programlama",
      konuNotu: '',
      soruCevap: 'Asenkron programalam nedir?',
    ),
    IcerikModel(
      konuBasligi: "Flutter'daki Widget'ları Tanıma 1",
      konuNotu: '',
      soruCevap: 'Widget ilişkileri nasıl kurulur ?',
    ),
    IcerikModel(
      konuBasligi: "Flutter'daki Widget'ları Tanıma 2",
      konuNotu: '',
      soruCevap: '',
    ),
    IcerikModel(
      konuBasligi: "Basit Bir Uygulama Geliştirelim",
      konuNotu: '',
      soruCevap: 'Uygulama geliştirirken temel noktalar neler ?',
    ),
    IcerikModel(
      konuBasligi: "Riverpod ile State Management",
      konuNotu: '',
      soruCevap: 'Riverpod ne işe yarar?',
    ),
    IcerikModel(
      konuBasligi: "Internet Kullanımı",
      konuNotu: '',
      soruCevap: '',
    ),
    IcerikModel(
      konuBasligi: "Hata Yakalama",
      konuNotu: '',
      soruCevap: 'Yakalanan hata nasıl çözülür ?',
    ),
    IcerikModel(
      konuBasligi: "Firebase",
      konuNotu: '',
      soruCevap: 'Firebase ne işe yarar?',
    ),
    IcerikModel(
      konuBasligi: "Animasyonlar",
      konuNotu: '',
      soruCevap: 'Animasyon nasıl oluşturulur ?',
    ),
    IcerikModel(
      konuBasligi: "Testler",
      konuNotu: '',
      soruCevap: 'Test nasıl yapılır ?',
    ),
    IcerikModel(
      konuBasligi: "Uygulamayı Yayınlamaya Hazırlık",
      konuNotu: '',
      soruCevap: 'Uygulama yayınlanırken karşılaşılan sorunlar neler ?',
    ),
    IcerikModel(
      konuBasligi: "Flutter 201",
      konuNotu: '',
      soruCevap: '',
    ),
    IcerikModel(
      konuBasligi: "Flutter 301",
      konuNotu: '',
      soruCevap: '',
    ),
    IcerikModel(
      konuBasligi: "Flutter 401",
      konuNotu: '',
      soruCevap: '',
    )

  ];
  List<IcerikModel> unityIcerikler = [
    IcerikModel(
      konuBasligi: "Giriş ve Kurulumlar",
      konuNotu: '',
      soruCevap: 'Unity nedir ?',
    ),
    IcerikModel(
      konuBasligi: "Programlamaya Giriş",
      konuNotu: '',
      soruCevap: 'Program nasıl kurulur ?',
    ),
    IcerikModel(
      konuBasligi: "Değerlerin Kullanılması",
      konuNotu: '',
      soruCevap: '',
    ),
    IcerikModel(
      konuBasligi: "Sayısal Operasyonlar",
      konuNotu: '',
      soruCevap: '',
    ),
    IcerikModel(
      konuBasligi: "Class: Namespace Yapıları",
      konuNotu: '',
      soruCevap: 'Namespace nedir ?',
    ),
    IcerikModel(
      konuBasligi: "Mantıksal Operasyonlar",
      konuNotu: '',
      soruCevap: '',
    ),
    IcerikModel(
      konuBasligi: "Unity Temel Ekranları",
      konuNotu: '',
      soruCevap: 'Unity ekranım gelmiyor nedern ?',
    ),
    IcerikModel(
      konuBasligi: "2 Boyutlu Assetlerle Çalışma",
      konuNotu: '',
      soruCevap: '2 boyutlu asset ne işe yarar?',
    ),
    IcerikModel(
      konuBasligi: "Karakter Animasyon",
      konuNotu: '',
      soruCevap: 'Karakter animasyonu nasıl yapılır ?',
    ),
    IcerikModel(
      konuBasligi: "Uygulama Sıralaması (Execution Order)",
      konuNotu: '',
      soruCevap: 'Execution order nedir ?',
    ),
    IcerikModel(
      konuBasligi: "Karakter Animasyon 2",
      konuNotu: '',
      soruCevap: '',
    ),
    IcerikModel(
      konuBasligi: "Prefabler",
      konuNotu: '',
      soruCevap: 'Prefab nedir ?',
    ),
    IcerikModel(
      konuBasligi: "2 Boyutlu Assetlerle Çalışma 2",
      konuNotu: '',
      soruCevap: '',
    ),
    IcerikModel(
      konuBasligi: "Arayüz 2",
      konuNotu: '',
      soruCevap: 'Arayüz nedir ?',
    ),
    IcerikModel(
      konuBasligi: "Son Değişiklikler ve Build",
      konuNotu: '',
      soruCevap: 'Nasıl build edilir ?',
    ),
    IcerikModel(
      konuBasligi: "Sıfırdan 2D Oyun Örneği",
      konuNotu: '',
      soruCevap: '2D oyun sorunları nasıl çözülür ?',
    ),
    IcerikModel(
      konuBasligi: "Unity Tips&Tricks",
      konuNotu: '',
      soruCevap: 'Tips ve treicks farkı nedir ?',
    )

  ];
  List<IcerikModel> projeIcerikler = [
    IcerikModel(
        konuBasligi: 'Proje Yönetim Temelleri',
        konuNotu: '',
        soruCevap: 'Proje yönetiminde dikkat edilmesi gerekenler ?'),
    IcerikModel(
        konuBasligi: 'Proje Başlatma: Başarılı Bir Proje Tasarlama',
        konuNotu: '',
        soruCevap: 'Proje ne zaman başlatılır?'),
    IcerikModel(
        konuBasligi: 'Proje Başlatma: Tüm Süreçleri Bir Araya Getirmek',
        konuNotu: '',
        soruCevap: 'Tüm süreçleri bir araya getirmenin avantajları nelerir? '),
    IcerikModel(
        konuBasligi: 'Proje Başlatma: Proje Süreçlerini Yürütme',
        konuNotu: '',
        soruCevap: 'Proje yürütme süreci nasıl olur ?'),
    IcerikModel(
        konuBasligi: 'Agile (Çevik) Proje Yönetimi',
        konuNotu: '',
        soruCevap: 'Agile nasıl çalışılır ?'),
    IcerikModel(
        konuBasligi: 'Gerçek Dünyada Proje Yönetimini Uygulama',
        konuNotu: '',
        soruCevap: 'Uygulamaya dökerken hangi sorunlarla karşılaşırız ?')



  ];
  List<IcerikModel> girisimcilikIcerikler = [
    IcerikModel(
        konuBasligi: 'Kullanıcı İçgörüsü Toplama ve Sentezleme',
        konuNotu: '',
        soruCevap: 'İç görü nedir?'),
    IcerikModel(
        konuBasligi: 'Fikir Doğrulama',
        konuNotu: '',
        soruCevap: 'Fikir nasıl doğrulanır ?'),
    IcerikModel(
        konuBasligi: 'Kullanıcı Kazanımı & Büyüme Yöntemleri',
        konuNotu: '',
        soruCevap: 'Kullanıcıya cazip hale nasıl getirebiliriz?'),
    IcerikModel(
        konuBasligi: 'Validasyon, İterasyon, Pivot Etmek',
        konuNotu: '',
        soruCevap: 'Validasyon, İterasyon, Pivot Etme aşamalarının önemi nedir ?'),
    IcerikModel(
        konuBasligi: 'Seviyelere Göre Hedef Belirleme',
        konuNotu: '',
        soruCevap: 'Hedefler belirlenirken dikkat edilmesi gerekenler ?'),
    IcerikModel(
        konuBasligi: 'KVKK, Fikri Haklar, Şirket Kurulumu ve Regülasyon',
        konuNotu: '',
        soruCevap: 'Fikri haklarım neler ?'),
    IcerikModel(
        konuBasligi: 'Startup Pitching',
        konuNotu: '',
        soruCevap: 'Pitching nasıl hazırlanır ?'),
    IcerikModel(
        konuBasligi: 'Yatırım Çeşitleri & Yatırımlara Göre Farklılıklar',
        konuNotu: '',
        soruCevap: 'Kaç tip yatırım çeşidi var ?'),
    IcerikModel(
        konuBasligi: 'Girişimlerdeki Bütçe Yönetimi & Yatırım Kararları',
        konuNotu: '',
        soruCevap: 'Bütçe nasıl yönetilir ?'),
    IcerikModel(
        konuBasligi: 'Girişimciler İçin Şirketleşme',
        konuNotu: '',
        soruCevap: 'Şirket nasıl kurulur ?'),
    IcerikModel(
        konuBasligi: 'Girişimciler İçin Müzakere 101',
        konuNotu: '',
        soruCevap: 'Müzakerede nelere dikkat edilmeli ?'),
    IcerikModel(
        konuBasligi: 'Girişimciler İçin KVKK ve GDPR',
        konuNotu: '',
        soruCevap: ''),
    IcerikModel(
        konuBasligi: 'Girişimciler için Finansal Sistem',
        konuNotu: '',
        soruCevap: 'Finansal sistem nasıl kurlur ?'),
    IcerikModel(
        konuBasligi: 'İşletmelerin Dikkat Etmesi Gereken Hususlar',
        konuNotu: '',
        soruCevap: ''),
    IcerikModel(
        konuBasligi: 'İşletmeler için Muhasebe',
        konuNotu: '',
        soruCevap: 'Muhasebe nasıl tutulur ?'),
    IcerikModel(
        konuBasligi: 'İşletmelerde Yasal Zorunluluklar ve Belgeler',
        konuNotu: '',
        soruCevap: 'Yasal zorunluluk ve cezaları nedir ?'),
    IcerikModel(
        konuBasligi: 'Şirket Türleri ve Kuruluş Süreci',
        konuNotu: '',
        soruCevap: 'Kaç tip şirket vardır ?'),
    IcerikModel(
        konuBasligi: 'İşletmelerde Faaliyet Döngüsü',
        konuNotu: '',
        soruCevap: ' '),
    IcerikModel(
        konuBasligi: 'Finansal Kaynaklar ve Araçlar',
        konuNotu: '',
        soruCevap: ' '),
    IcerikModel(
        konuBasligi: 'İşletmelerde Nakit Yönetimi',
        konuNotu: '',
        soruCevap: ' '),
    IcerikModel(
        konuBasligi: 'Vergi Uygulamaları',
        konuNotu: '',
        soruCevap: 'Vergi uygulamaları yurt dışında daha mı avantajlı ?'),
    IcerikModel(
        konuBasligi: 'Finansal Raporlar',
        konuNotu: '',
        soruCevap: 'Finansal rapor neden önemlidir ?'),
    IcerikModel(
        konuBasligi: 'Ek Ders: Pandeminin Şirketlere Etkisi',
        konuNotu: '',
        soruCevap: 'Pandemi rendi nasıl değiştirdi ?'),
    IcerikModel(
        konuBasligi: 'İnsan Kaynakları Eğitimi',
        konuNotu: '',
        soruCevap: '')


  ];
  List<IcerikModel> ingilizceIcerikler = [
    IcerikModel(
        konuBasligi: 'Tenses, Question Types, Nouns and Pronouns',
        konuNotu: '',
        soruCevap: 'Kaç tense vardır ?'),
    IcerikModel(
        konuBasligi: 'Reading Practice',
        konuNotu: '',
        soruCevap: ' '),
    IcerikModel(
        konuBasligi: 'Modals',
        konuNotu: '',
        soruCevap: 'Modals nerede kullanılır ?'),
    IcerikModel(
        konuBasligi: 'Reading Practice',
        konuNotu: '',
        soruCevap: ' '),
    IcerikModel(
        konuBasligi: 'Tha Passive, Noun Clauses and Relative Clauses',
        konuNotu: '',
        soruCevap: 'Passive ve relative farkı nedir ?'),
    IcerikModel(
        konuBasligi: 'Reading Practice',
        konuNotu: '',
        soruCevap: ' '),
    IcerikModel(
        konuBasligi: 'Comparisons, Adverb Clauses, Connectors, Conditionals and Gerunds - Infinitives',
        konuNotu: '',
        soruCevap: ' '),
    IcerikModel(
        konuBasligi: 'Reading Practice',
        konuNotu: '',
        soruCevap: ' ')

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.dersAdi),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                widget.dersAdi == 'Flutter'
                    ? FlutterLogo(
                  size: 100,
                )
                    : widget.dersAdi == 'Unity'
                    ? Image.asset(
                  'images/unity.png',
                  width: 100,
                  height: 100,
                )
                    : widget.dersAdi == 'Proje'
                    ? Image.asset(
                  'images/project.png',
                  width: 100,
                  height: 100,
                )
                    : widget.dersAdi == 'Girişimcilik'
                    ? Image.asset(
                  'images/entrepreneurship.png',
                  width: 100,
                  height: 100,
                )
                    : widget.dersAdi == 'İngilizce'
                    ? Image.asset(
                  'images/eng.png',
                  width: 100,
                  height: 100,
                )
                    : Text('Boş'),
                Text(
                  widget.dersAdi,
                  style: TextStyle(fontSize: 40),
                ),
              ],
            ),
            Flexible(
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Container(

                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.redAccent.shade100),

                  ),
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Nots(),
                              ));
                            },
                            icon: Icon(
                              Icons.note_add,
                              size: 40,
                              color: Colors.orange,
                            )),
                       
                        Flexible(
                          child: Text(
                            widget.dersAdi == "Flutter"
                                ? flutterIcerikler[index].konuBasligi
                                : widget.dersAdi == 'Unity'
                                ? unityIcerikler[index].konuBasligi
                                : widget.dersAdi == 'Proje'
                                ? projeIcerikler[index].konuBasligi
                                : widget.dersAdi == 'Girişimcilik'
                                ? girisimcilikIcerikler[index]
                                .konuBasligi
                                : widget.dersAdi == 'İngilizce'
                                ? ingilizceIcerikler[index]
                                .konuBasligi
                                : '',
                            style: TextStyle(fontSize: 20),
                            maxLines: 2,

                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SoruCevap(),
                              ));
                            },
                            icon: Icon(
                              Icons.question_answer,
                              size: 40,
                              color: Colors.green,
                            ))
                      ],

                    ),
                  );
                },
                itemCount: widget.dersAdi == "Flutter"
                    ? flutterIcerikler.length
                    : widget.dersAdi == 'Unity'
                    ? unityIcerikler.length
                    : widget.dersAdi == 'Proje'
                    ? projeIcerikler.length
                    : widget.dersAdi == 'Girişimcilik'
                    ? girisimcilikIcerikler.length
                    : widget.dersAdi == 'İngilizce'
                    ? ingilizceIcerikler.length
                    : 0,
              ),
            ),
          ],
        ));
  }
}