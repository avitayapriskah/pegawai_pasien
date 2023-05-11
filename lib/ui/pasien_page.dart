import 'package:flutter/material.dart';
import 'package:klinik_avi/model/home.dart';
import 'package:klinik_avi/model/pasien.dart';
import 'package:klinik_avi/ui/pasien_detail.dart';

class PasienPage extends StatefulWidget {
  final Home home;

  const PasienPage({super.key, required this.home});

  @override
  State<PasienPage> createState() => _PasienPageState();
}

class _PasienPageState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Pasien"),
      ),
      body: ListView(
        children: [
          GestureDetector(
            child: const Card(
              child: ListTile(
                title: Text("Amanda Desvya"),
              ),
            ),
            onTap: () {
              Pasien amanda = Pasien(
                nomorRm: "111",
                namaPasien: "Amanda Desvya",
                tanggalLahirpasien: "6 Desember 2009",
                nomorTeleponpasien: "088232009489",
                alamat: "Yogyakarta",
              );
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PasienDetai(pasien: amanda),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
