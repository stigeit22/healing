import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:healing_project/widget/optionpesanan.dart';

class selesai extends StatelessWidget {
  const selesai({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: optionpesanan(
        name: 'Andri Ardiansyah',
        penumpang: '4 Penumpang',
        tanggal: '20-11-2022',
        status: 'Aktif',
        nopesanan: 'No.Pesanan :nfefwe21',
        Ltujuan: 'Sabda Alam Garut',
        Lawal: 'Tarogong Kidul',
        Jamp: '12:00',
        Jamb: '10:00',
        link: '',
      )),
    );
  }
}
