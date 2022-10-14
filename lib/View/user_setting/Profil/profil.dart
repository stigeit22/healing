import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:healing_project/View/user_setting/Profil/InfoAkun/editdata.dart';
import 'InfoAkun/informasiakun.dart';
import 'setting/setting.dart';

class Profil extends StatelessWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff5C40CC),
          title: Text("My Profile"),
          actions: [
            PopupMenuButton(
                itemBuilder: (context) => [
                      PopupMenuItem(
                          child: Row(
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text("Pusat Bantuan"),
                          ),
                        ],
                      )),
                      PopupMenuItem(
                          child: TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text("Share"),
                          ],
                        ),
                      )),
                      PopupMenuItem(
                          child: Row(
                        children: [
                          TextButton(
                            onPressed: () async {
                              Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                      builder: (context) => setting()));
                            },
                            child: Text("Setting"),
                          ),
                        ],
                      )),
                    ])
          ],
        ),
        body: Container(
          child: ListView(
            children: [
              Column(children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 15, left: 20),
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xff5C40CC),
                        //BorderRadius.circular(radius)
                      ),
                      child: Center(
                          child: Text(
                        'T',
                        style: TextStyle(color: Colors.white, fontSize: 50),
                      )),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Halo, Muhammad Thorik",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text("muhamadthorik01@Gmail.com"),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 23, top: 10),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'INFO DATA PRIBADI',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ubahdata()));
                          },
                          child: Text(
                            'EDIT',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff5C40CC)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
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
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image(
                                        image:
                                            AssetImage("images/i_person.png"),
                                        width: 20,
                                        height: 20,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("Nama Lengkap",
                                          style: TextStyle(
                                            color: Colors.black,
                                          )),
                                    ],
                                  ),
                                  Text(
                                    'M Thorik S',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ]),
                          ),
                          SizedBox(height: 10),
                          Divider(color: Colors.grey),
                          SizedBox(height: 10),
                          Container(
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image(
                                        image:
                                            AssetImage("images/i_Jkelamin.png"),
                                        width: 20,
                                        height: 20,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("Jenis Kelamin",
                                          style: TextStyle(
                                            color: Colors.black,
                                          )),
                                    ],
                                  ),
                                  Text(
                                    'Laki-laki',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ]),
                          ),
                          SizedBox(height: 10),
                          Divider(color: Colors.grey),
                          SizedBox(height: 10),
                          Container(
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image(
                                        image:
                                            AssetImage("images/i_kalender.png"),
                                        width: 20,
                                        height: 20,
                                      ),
                                      SizedBox(width: 10),
                                      Text("Tanggal Lahir",
                                          style: TextStyle(
                                            color: Colors.black,
                                          )),
                                    ],
                                  ),
                                  Text(
                                    '12 Mar 1999',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ]),
                          ),
                          SizedBox(height: 10),
                          Divider(color: Colors.grey),
                          SizedBox(height: 10),
                          Container(
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image(
                                        image: AssetImage("images/i_email.png"),
                                        width: 20,
                                        height: 20,
                                      ),
                                      SizedBox(width: 10),
                                      Text("Email",
                                          style: TextStyle(
                                            color: Colors.black,
                                          )),
                                    ],
                                  ),
                                  Text(
                                    'muhamadthorik01@gmail.com',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ]),
                          ),
                          SizedBox(height: 10),
                          Divider(color: Colors.grey),
                          SizedBox(height: 10),
                          Container(
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image(
                                        image: AssetImage("images/i_hp.png"),
                                        width: 20,
                                        height: 20,
                                      ),
                                      SizedBox(width: 10),
                                      Text("No Handphone",
                                          style: TextStyle(
                                            color: Colors.black,
                                          )),
                                    ],
                                  ),
                                  Text(
                                    '0831768721',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Akun yang Terhubung',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Masuk lebih mudah dengan menghubungkan akun sosial Anda ke Helaing Time',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
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
                        Container(
                          padding: EdgeInsets.only(right: 25),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image(
                                      image: AssetImage("images/google.png"),
                                      width: 20,
                                      height: 20,
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    infoakun()));
                                      },
                                      child: Text("Google",
                                          style: TextStyle(
                                            color: Colors.black,
                                          )),
                                    ),
                                  ],
                                ),
                                Icon(Icons.check),
                              ]),
                        ),
                        Divider(color: Colors.grey),
                        SizedBox(height: 10),
                        Container(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image(
                                      image: AssetImage("images/fb.png"),
                                      width: 20,
                                      height: 20,
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    infoakun()));
                                      },
                                      child: Text("Facebook",
                                          style: TextStyle(
                                            color: Colors.black,
                                          )),
                                    ),
                                  ],
                                ),
                                GestureDetector(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xff5C40CC),
                                        borderRadius: BorderRadius.circular(5)),
                                    height: 38,
                                    width: 75,
                                    child: Center(
                                        child: Text(
                                      'Hubungkan',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    )),
                                  ),
                                  onTap: (() {}),
                                )
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Get.toNamed("signUp");
                    },
                    child: Text(
                      "Version 0.1 ",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff5C40CC),
                      ),
                    )),
              ]),
            ],
          ),
        ));
  }
}
