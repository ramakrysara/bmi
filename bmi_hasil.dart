import 'package:flutter/material.dart';
import 'dart:math';
// ignore: unused_import
import 'about.dart';

class BMIResult extends StatelessWidget {
  BMIResult(
      // ignore: non_constant_identifier_names
      {@required this.tinggi_badan,
      // ignore: non_constant_identifier_names
      @required this.berat_badan,
      // ignore: non_constant_identifier_names
      @required this.nama_lengkap,
      // ignore: non_constant_identifier_names
      @required this.tahun_lahir,
      @required this.jk});
  // ignore: non_constant_identifier_names
  final int tinggi_badan;
  // ignore: non_constant_identifier_names
  final int tahun_lahir;
  // ignore: non_constant_identifier_names
  final int berat_badan;
  // ignore: non_constant_identifier_names
  final String nama_lengkap;
  final String jk;

  @override
  Widget build(BuildContext context) {
    double bmi = berat_badan / pow(tinggi_badan / 100, 2);
    String cBMI;
    if (bmi >= 28)
      cBMI = "Obesitas";
    else if (bmi >= 23)
      cBMI = "Gemuk";
    else if (bmi >= 17.5)
      cBMI = "Normal";
    else
      cBMI = "Kurus";

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Hasil'),
        backgroundColor: Colors.orange[300],
      ),
      body: Container(
        color: Colors.orange[100],
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
              child: Container(
                color: Colors.orange[100],
              ),
            ),
            new Text(
              // ignore: unnecessary_brace_in_string_interps
              "Nama : ${nama_lengkap}",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow[900]),
            ),
            SizedBox(
              height: 10,
              child: Container(
                color: Colors.orange[100],
              ),
            ),
            new Text(
              "Umur : ${2020 - tahun_lahir} Tahun",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow[900]),
            ),
            SizedBox(
              height: 10,
              child: Container(
                color: Colors.orange[100],
              ),
            ),
            new Text(
              // ignore: unnecessary_brace_in_string_interps
              "Jenis Kelamin : ${jk} ",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow[900]),
            ),
            SizedBox(
              height: 20,
              child: Container(
                color: Colors.orange[100],
              ),
            ),
            Text(
              cBMI,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.yellow[900],
              ),
            ),
            Text(
              bmi.toStringAsFixed(2),
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.yellow[900],
              ),
            ),
            SizedBox(
              height: 10,
              child: Container(
                color: Colors.orange[100],
              ),
            ),
            Text(
              'Jangkauan Normal BMI',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.yellow[900],
              ),
            ),
            Text(
              '17,5 -  22.9 ',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.yellow[900],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        //color: Colors.transparent,
        child: Container(
          height: 60,
          color: Colors.orange[300],
          alignment: Alignment.center,
          child: Text(
            '',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w900, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
