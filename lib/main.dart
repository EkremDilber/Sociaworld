// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sociaworld/profilsayfasi.dart';
import 'gonderikarti.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sociaworld',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          color: Colors.grey,
          iconSize: 32.0,
        ),
        title: const Text(
          "Sociaworld",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.grey,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Column(
                      children: [
                        bildirimler("Esra seni takip etti", "3 dakika önce"),
                        bildirimler(
                            "Seda gönderine yorum yaptı", "15 dakika önce"),
                        bildirimler("Hakan sana mesaj gönderdi", "3 saat önce"),
                      ],
                    );
                  });
            },
            icon: const Icon(Icons.notifications),
            color: Colors.purple[500],
            iconSize: 32.0,
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 100.0,
            decoration:
                BoxDecoration(color: Colors.grey[100], boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 3.0),
                blurRadius: 5.0,
              ),
            ]),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                profilKartiOlustur(
                    "selcuk.yaldiz",
                    "https://cdn.pixabay.com/photo/2016/11/21/14/53/man-1845814_960_720.jpg",
                    "Selçuk Yaldız",
                    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg",
                    "20K",
                    "600",
                    "41"),
                profilKartiOlustur(
                    "tom.watson",
                    "https://cdn.pixabay.com/photo/2016/07/22/16/54/portrait-1535266_960_720.jpg",
                    "Tom Watson",
                    "https://cdn.pixabay.com/photo/2015/06/19/21/24/avenue-815297_960_720.jpg",
                    "30K",
                    "700",
                    "23"),
                profilKartiOlustur(
                    "jessica.lopez",
                    "https://cdn.pixabay.com/photo/2016/11/29/06/08/woman-1867715_960_720.jpg",
                    "Jessica Lopez",
                    "https://cdn.pixabay.com/photo/2013/11/28/10/36/road-220058_960_720.jpg",
                    "56K",
                    "687",
                    "32"),
                profilKartiOlustur(
                    "belma.zorlu",
                    "https://cdn.pixabay.com/photo/2015/10/14/04/17/woman-987188_960_720.jpg",
                    "Belma Zorlu",
                    "https://cdn.pixabay.com/photo/2017/02/01/22/02/mountain-landscape-2031539_960_720.jpg",
                    "27K",
                    "893",
                    "57"),
                profilKartiOlustur(
                    "yildiz.mars",
                    "https://cdn.pixabay.com/photo/2021/06/25/13/22/girl-6363743_960_720.jpg",
                    "Yıldız Mars",
                    "https://cdn.pixabay.com/photo/2013/11/28/10/03/river-219972_960_720.jpg",
                    "58K",
                    "1532",
                    "78"),
                profilKartiOlustur(
                    "nadir.cakir",
                    "https://cdn.pixabay.com/photo/2021/06/15/16/11/man-6339003_960_720.jpg",
                    "Nadir Çakır",
                    "https://cdn.pixabay.com/photo/2015/07/05/10/18/tree-832079_960_720.jpg",
                    "15K",
                    "754",
                    "25"),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          GonderiKarti(
            profilResimLinki:
                "https://cdn.pixabay.com/photo/2016/11/21/14/53/man-1845814_960_720.jpg",
            gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2019/08/07/14/11/dog-4390885_960_720.jpg",
            isimSoyad: "Selçuk Yaldız",
            gecenSure: "1 saat önce",
            aciklama: "Ne kadar da tatlı",
          ),
          GonderiKarti(
            profilResimLinki:
                "https://cdn.pixabay.com/photo/2019/11/03/20/11/portrait-4599553_960_720.jpg",
            gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2022/09/04/22/42/meadow-7432891_960_720.jpg",
            isimSoyad: "Selda Mert",
            gecenSure: "Dün",
            aciklama: "Manzaraya hayran kaldım",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.purple[400],
        child: Icon(
          Icons.add_a_photo,
          color: Colors.white,
        ),
      ),
    );
  }

  Padding bildirimler(String mesaj, String gecensure) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            mesaj,
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
          ),
          Text(
            gecensure,
            style: TextStyle(fontSize: 12.5, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget profilKartiOlustur(
      String kullaniciAdi,
      String resimLinki,
      String isimSoyad,
      String kapakResimLinki,
      String takipci,
      String takip,
      String gonderi) {
    return Material(
      child: InkWell(
        splashColor: Colors.white,
        highlightColor: Colors.white,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => ProfilSayfasi(
                        profilResimLinki: resimLinki,
                        kullaniciAdi: kullaniciAdi,
                        isimSoyad: isimSoyad,
                        kapakResimLinki: kapakResimLinki,
                        takipci: takipci,
                        takip: takip,
                        gonderi: gonderi,
                      )));
        },
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 4, 0),
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Hero(
                    tag: kullaniciAdi,
                    child: Container(
                      width: 70.0,
                      height: 70.0,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1.7, color: Colors.grey),
                          borderRadius: BorderRadius.circular(35.0),
                          image: DecorationImage(
                            image: NetworkImage(
                              resimLinki,
                            ),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                  Container(
                    height: 16.5,
                    width: 16.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: Colors.green,
                        border: Border.all(width: 2.0, color: Colors.white)),
                  ),
                ],
              ),
              const SizedBox(height: 4.0),
              Text(
                kullaniciAdi,
                style: const TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
