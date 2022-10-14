import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:healing_project/model/class_pic_loksi.dart';
import 'package:healing_project/style/constrant.dart';
import 'package:shared_preferences/shared_preferences.dart';

class alret_checkbox extends StatefulWidget {
  const alret_checkbox({super.key});

  @override
  State<alret_checkbox> createState() => _alret_checkboxState();
}

class _alret_checkboxState extends State<alret_checkbox> {
  bool check = false;
  bool check2 = false;
  bool check3 = false;
  bool _checkboxValue = false;
  bool _checkboxValue2 = false;
  bool _checkboxValue3 = false;

  @override
  void initState() {
    _loadswitchValue();
  }

  _loadswitchValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    check = (prefs.getBool("moon")) ?? false;
    check2 = (prefs.getBool("kuya")) ?? false;
    check3 = (prefs.getBool("buaya")) ?? false;
    _checkboxValue = (prefs.getBool("1")) ?? false;
    _checkboxValue2 = (prefs.getBool("1")) ?? false;
    _checkboxValue3 = (prefs.getBool("1")) ?? false;
  }

  __savenswitchValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      prefs.setBool("1", _checkboxValue);
      prefs.setBool("2", _checkboxValue2);
      prefs.setBool("3", _checkboxValue3);
      prefs.setBool("moon", check);
      prefs.setBool("kuya", check2);
      prefs.setBool("buaya", check3);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Checkbox(
                      value: _checkboxValue,
                      onChanged: (value) {
                        setState(() {
                          _checkboxValue = value!;
                          __savenswitchValue();
                        });
                      }),
                  Checkbox(
                      value: _checkboxValue2,
                      onChanged: (value) {
                        setState(() {
                          _checkboxValue2 = value!;
                          __savenswitchValue();
                        });
                      }),
                  Checkbox(
                      value: _checkboxValue3,
                      onChanged: (value) {
                        setState(() {
                          _checkboxValue3 = value!;
                          __savenswitchValue();
                        });
                      })
                ],
              ),
              TextButton(
                  onPressed: (() {
                    showalertdyalog("widget.title");
                  }),
                  child: Text("Press")),
              _getpage(check)
            ],
          ),
        ),
      ),
    );
  }

  _getpage(bool page) {
    switch (page) {
      case true:
        return Column(
          children: [
            Image(
              image: AssetImage('images/garut.png'),
              height: 300,
            ),
            Text("Garut")
          ],
        );

      case false:
        return Column(
            // children: [
            //   Image(
            //     image: AssetImage('images/garut.png'),
            //     height: 300,
            //   ),
            //   Text("Garut")
            // ],
            );
    }
  }

  void showalertdyalog(String title) {
    showDialog(
        context: context,
        builder: (setState) {
          return StatefulBuilder(builder: (context, setState) {
            return AlertDialog(
              title: Text("Filter Sesuai"),
              content: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Ac"),
                        Checkbox(
                            value: check,
                            checkColor: Colors.white,
                            focusColor: Colors.green,
                            activeColor: kpurple,
                            onChanged: (value) {
                              setState(() {
                                check = value!;
                              });
                            })
                      ],
                    ),
                    Row(
                      children: [
                        Text("Ac"),
                        Checkbox(
                            value: check2,
                            checkColor: Colors.white,
                            focusColor: Colors.green,
                            activeColor: kpurple,
                            onChanged: (value) {
                              setState(() {
                                check2 = value!;
                              });
                            })
                      ],
                    ),
                    Row(
                      children: [
                        Text("Ac"),
                        Checkbox(
                            value: check3,
                            checkColor: Colors.white,
                            focusColor: Colors.green,
                            activeColor: kpurple,
                            onChanged: (value) {
                              setState(() {
                                check3 = value!;
                              });
                            })
                      ],
                    )
                  ],
                ),
              ),
            );
          });
        });
  }
}
