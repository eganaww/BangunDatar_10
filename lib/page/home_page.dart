import 'package:bangun_datar_kelas_b/controller/segitiga_controller.dart';
import 'package:bangun_datar_kelas_b/page/ketupat_page.dart';
import 'package:bangun_datar_kelas_b/page/persegi_page.dart';
import 'package:bangun_datar_kelas_b/page/persegipanjang_page.dart';
import 'package:bangun_datar_kelas_b/page/segitiga_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page', style: TextStyle(color: Colors.black)),
        backgroundColor: Color(0xFF9EEA45),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(
                  child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>PersegiPage()));
                      },
                      child: CustomMenu(
                          imageAsset: "assets/persegi.jpg", title: "Persegi"))),
              Expanded(
                  child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>PersegiPanjangPage()));
                      },
                      child: CustomMenu(
                          imageAsset: "assets/panjang.jpg", title: "Persegi Panjang"))),
            ],
          ),
          Row(
            children: [
              Expanded(
                  child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>SegitigaPage()));
                      },
                      child: CustomMenu(
                          imageAsset: "assets/segitiga.jpg", title: "Segitiga"))),
              Expanded(
                  child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>BelahKetupatPage()));
                      },
                      child: CustomMenu(
                          imageAsset: "assets/sisi-belah-ketupat.jpg", title: "Belah Ketupat"))),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomMenu extends StatelessWidget {
  const CustomMenu({
    super.key,
    required this.imageAsset,
    required this.title,
  });

  final String imageAsset;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        color: Colors.indigoAccent.shade100,
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
        child: Column(
          children: [
            Image.asset(
              imageAsset,
              height: 150,
            ),
            Text(
              title,
              style: TextStyle(color: Colors.white),
            )
          ],
        ));
  }
}
