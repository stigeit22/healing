import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:healing_project/style/constrant.dart';

class ubahdata extends StatelessWidget {
  const ubahdata({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ubah Data'),
          backgroundColor: Color(0xff5C40CC),
        ),
        body: Container(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 20,
                ),
                child: Text(
                  'Foto Profil',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey, //color of shadow
                          spreadRadius: 0.2, //spread radius
                          blurRadius: 3, // blur radius
                          //offset: Offset(0, 1), // changes position of shadow
                          //first paramerter of offset is left-right
                          //second parameter is top to down
                        ),
                        //you can set more BoxShadow() here
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  right: BorderSide(
                                      color: Colors.grey, width: 0.2))),
                          height: 86,
                          width: 100,
                          padding: EdgeInsets.all(15),
                          child: CircleAvatar(
                            backgroundColor: kpurple,
                            child: Text(
                              'T',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 90),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'UBAH',
                              style: TextStyle(color: kpurple),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 20,
                    ),
                    child: Text(
                      'Data Diri',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey, //color of shadow
                            spreadRadius: 0.2, //spread radius
                            blurRadius: 3, // blur radius
                            //offset: Offset(0, 1), // changes position of shadow
                            //first paramerter of offset is left-right
                            //second parameter is top to down
                          ),
                          //you can set more BoxShadow() here
                        ],
                      ),
                      child: Column(
                        children: [
                          TextField(
                            cursorColor: Colors.black,
                            autofocus: false,
                            decoration: InputDecoration(
                                icon: Icon(
                                  Icons.person,
                                  size: 25,
                                  color: Colors.grey,
                                ),
                                border: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                                label: Text(
                                  "Nama Lengkap",
                                  style: TextStyle(color: Colors.black),
                                ),
                                hintText: 'Thorik'),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            cursorColor: Colors.black,
                            autofocus: false,
                            decoration: InputDecoration(
                                icon: Icon(
                                  Icons.male,
                                  size: 25,
                                  color: Colors.grey,
                                ),
                                border: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                                label: Text(
                                  "Jenis Kelamin",
                                  style: TextStyle(color: Colors.black),
                                ),
                                hintText: 'Thorik'),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            cursorColor: Colors.black,
                            autofocus: false,
                            decoration: InputDecoration(
                                icon: Icon(
                                  Icons.email,
                                  size: 25,
                                  color: Colors.grey,
                                ),
                                border: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                                label: Text(
                                  "Email",
                                  style: TextStyle(color: Colors.black),
                                ),
                                hintText: '@gmail.com'),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            cursorColor: Colors.black,
                            autofocus: false,
                            decoration: InputDecoration(
                                icon: Icon(
                                  Icons.key,
                                  size: 25,
                                  color: Colors.grey,
                                ),
                                border: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                                label: Text(
                                  "Password",
                                  style: TextStyle(color: Colors.black),
                                ),
                                hintText: ''),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            cursorColor: Colors.black,
                            autofocus: false,
                            decoration: InputDecoration(
                                icon: Icon(
                                  Icons.numbers,
                                  size: 25,
                                  color: Colors.grey,
                                ),
                                border: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                                label: Text(
                                  "No Hp",
                                  style: TextStyle(color: Colors.black),
                                ),
                                hintText: ''),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xff5C40CC),
                            borderRadius: BorderRadius.circular(10)),
                        height: 40,
                        width: double.infinity,
                        child: TextButton(
                            onPressed: () {
                              CoolAlert.show(
                                context: context,
                                type: CoolAlertType.success,
                                text: "Data Berhasil Dirubah",
                              );
                            },
                            child: Text('Simpan',
                                style: TextStyle(
                                  color: Colors.white,
                                ))),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
