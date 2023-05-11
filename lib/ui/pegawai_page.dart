import 'package:klinik_avi/model/home.dart';
import 'package:flutter/material.dart';
import 'package:klinik_avi/model/pegawai.dart';
import 'package:klinik_avi/ui/pegawai_detail.dart';

class PegawaiPage extends StatefulWidget {
  final Home home;

  const PegawaiPage({super.key, required this.home});

  @override
  State<PegawaiPage> createState() => _PegawaiPageState();
}

class _PegawaiPageState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Pegawai"),
      ),
      body: ListView(
        children: [
          GestureDetector(
            child: const Card(
              child: ListTile(
                title: Text("Avitaya Priska"),
              ),
            ),
            onTap: () {
              Pegawai avitayapriska = Pegawai(
                nip: "12210298",
                namaPegawai: "Avitayapriska",
                tanggalLahir: "10 April 2002",
                nomorTelepon: "088232002489",
                email: "12210298@bsi.ac.id",
                password: "123456789",
              );
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PegawaiDetail(pegawai: avitayapriska),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
