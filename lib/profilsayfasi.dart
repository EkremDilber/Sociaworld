// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'gonderikarti.dart';

class ProfilSayfasi extends StatelessWidget {
  final String isimSoyad;
  final String kullaniciAdi;
  final String kapakResimLinki;
  final String profilResimLinki;
  final String takipci;
  final String takip;
  final String gonderi;

  const ProfilSayfasi(
      {Key? key,
      required this.isimSoyad,
      required this.kullaniciAdi,
      required this.kapakResimLinki,
      required this.profilResimLinki,
      required this.takipci,
      required this.takip,
      required this.gonderi})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: 230.0,
                  color: Colors.grey[100],
                ),
                Container(
                    height: 180.0,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        image: DecorationImage(
                          image: NetworkImage(
                            kapakResimLinki,
                          ),
                          fit: BoxFit.cover,
                        ))),
                Positioned(
                  left: 20.0,
                  bottom: 0.0,
                  child: Hero(
                    tag: kullaniciAdi,
                    child: Container(
                      width: 120.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60.0),
                          color: Colors.lightBlue,
                          border: Border.all(width: 2.0, color: Colors.white),
                          image: DecorationImage(
                              image: NetworkImage(profilResimLinki),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
                Positioned(
                  top: 190.0,
                  left: 145.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        isimSoyad,
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        kullaniciAdi,
                        style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 130.0,
                  right: 15.0,
                  child: Container(
                    width: 100.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.grey[200],
                        border: Border.all(width: 2.0, color: Colors.white)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.add_circle,
                            size: 18.0,
                          ),
                          SizedBox(width: 3.0),
                          Text(
                            "Takip Et",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )
                        ]),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.lightBlueAccent,
                    ))
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 75.0,
              color: Colors.grey.withOpacity(0.1),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    sayac("Takipçi", takipci),
                    sayac("Takip", takip),
                    sayac("Gönderi", gonderi),
                  ]),
            ),
            GonderiKarti(
              profilResimLinki: profilResimLinki,
              gonderiResimLinki:
                  "https://cdn.pixabay.com/photo/2019/08/07/14/11/dog-4390885_960_720.jpg",
              isimSoyad: kullaniciAdi,
              gecenSure: "1 saat önce",
              aciklama: "Ne kadar da tatlı",
            ),
          ],
        ));
  }

  Column sayac(String baslik, String sayi) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          sayi,
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 1.0,
        ),
        Text(
          baslik,
          style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey[600]),
        ),
      ],
    );
  }
}
