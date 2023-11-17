import 'package:get/get.dart';

class SegitigaController extends GetxController {
  int alas = 0;
  int tinggi = 0;
  int sisi = 0;
  final hasil = "".obs;

  void hitungLuas(){
    double hitung = 0.5 * (alas * tinggi);
    hasil.value = "Hasil Perhitungan Luas Segitiga dari $alas x $tinggi * 1/2 adalah $hitung";
  }

  void hitungKeliling(){
    int hitung = sisi + sisi + sisi ;
    hasil.value = "Hasil Perhitungan Keliling Segitiga dari $sisi adalah $hitung";
  }

}