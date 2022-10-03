import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class tiketoption extends StatelessWidget {
  final String Ntravel;
  final String Jtravel;
  final String harga;
  final String Jpergi;
  final String Jtiba;
  final String estimasi;
  final String Lawal;
  final String Ltujuan;
  final String link;

  const tiketoption(
      {super.key,
      required this.Ntravel,
      required this.Jtravel,
      required this.harga,
      required this.Jpergi,
      required this.Jtiba,
      required this.estimasi,
      required this.Lawal,
      required this.Ltujuan,
      required this.link});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, link);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.all(15),
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.20), blurRadius: 0.20)
          ]),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Ntravel,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    harga,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.yellow),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(Jtravel), Text("per orang")],
              ),
              Divider(
                color: Colors.grey,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Jpergi,
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          estimasi,
                          style: TextStyle(fontSize: 10),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          Jtiba,
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  //   TimelineDivider(axis: TimelineAxis.vertical,
                  //  thickness: 2,
                  //  begin: 1.22,
                  //  end: 0.88,
                  //  color: Colors.grey,

                  //   ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(Lawal),
                        SizedBox(
                          height: 20,
                        ),
                        Text(Ltujuan),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
