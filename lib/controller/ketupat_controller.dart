import 'package:get/get.dart';

class BelahKetupatController extends GetxController {
  int d1 = 0;
  int d2 = 0;
  int sisi = 0;
  final hasil = "".obs;

  void hitungLuas(){
    double hitung = 0.5 * d1 * d2;
    hasil.value = "Hasil Perhitungan Luas Belah Ketupat dari $d1 x $d2 * 1/2 adalah $hitung";
  }

  void hitungKeliling(){
    int hitung = 4 * sisi;
    hasil.value = "Hasil Perhitungan Keliling Belah Ketupat dari $sisi adalah $hitung";
  }

}