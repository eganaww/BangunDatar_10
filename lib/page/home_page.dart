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
              Expanded (child: CustomMenu(imageAsset: "assets/persegi.jpg", title: "Persegi")),
              Expanded (child: CustomMenu(imageAsset: "assets/panjang.jpg", title: "Persegi Panjang")),
            ],
          ),
          CustomMenu(imageAsset: "assets/segitiga.jpg", title: "Segitiga"),
          CustomMenu(imageAsset: "assets/trapesium.jpg", title: "Trapesium"),
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
