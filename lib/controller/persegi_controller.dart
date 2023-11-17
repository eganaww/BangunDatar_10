import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PersegiController extends GetxController {
  int sisi = 0;
  final hasil = "".obs;
  final warna = Rx<Color>(Colors.black);

  void hitungLuas(){
    int hitung = sisi * sisi;
    warna.value = Colors.white;
    hasil.value = "Hasil Perhitungan Luas dari $sisi x $sisi adalah $hitung";
  }

  void hitungKeliling(){
    int hitung = 4 * sisi;
    warna.value = Colors.white;
    hasil.value = "Hasil Perhitungan Keliling dari 4 x $sisi adalah $hitung";
  }
}