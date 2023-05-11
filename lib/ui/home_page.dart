import 'package:klinik_avi/ui/pasien_page.dart';
import 'package:klinik_avi/ui/pegawai_page.dart';
import 'package:flutter/material.dart';
import 'package:klinik_avi/model/home.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomePageState();
}

class _HomePageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("KLINIK AVI"),
      ),
      body: ListView(
        children: [
          GestureDetector(
            child: const Card(
              child: ListTile(
                title: Text("DATA PASIEN"),
              ),
            ),
            onTap: () {
              Home dataPasien = Home(namaHome: "Data Pasien");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PasienPage(home: dataPasien),
                  ));
            },
          ),
          GestureDetector(
            child: const Card(
              child: ListTile(
                title: Text("DATA PEGAWAI"),
              ),
            ),
            onTap: () {
              Home dataPegawai = Home(namaHome: "Data Pegawai");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PegawaiPage(home: dataPegawai),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
