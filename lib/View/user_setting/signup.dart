import 'package:flutter/material.dart';
import 'package:healing_project/View/user_setting/login.dart';

class signUp extends StatefulWidget {
  const signUp({Key? key}) : super(key: key);

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [
            // Color(0xff5C40CC),
            Color.fromARGB(255, 20, 67, 197),

            Color.fromARGB(255, 146, 240, 117),
          ])),
      child: ListView(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                margin: EdgeInsets.only(top: 50, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Explore terus',
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'keindahan alam  di sekitar kita',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )
                  ],
                )),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Center(
                child: Text(
                  'Healing Time',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                child: Column(children: [
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: "fonts/Poppins-Medium.ttf",
                                  fontWeight: FontWeight.bold),
                              prefixIcon: Icon(Icons.person),
                              hintText: "Flull Name",
                              border: InputBorder.none),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: "fonts/Poppins-Medium.ttf",
                                  fontWeight: FontWeight.bold),
                              prefixIcon: Icon(Icons.email),
                              hintText: "Email Addres",
                              border: InputBorder.none),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: "fonts/Poppins-Medium.ttf",
                                  fontWeight: FontWeight.bold),
                              prefixIcon: Icon(Icons.lock_outline_rounded),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                                child: Icon(_obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                              ),
                              hintText: "Password",
                              border: InputBorder.none),
                          obscureText: _obscureText,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: "fonts/Poppins-Medium.ttf",
                                  fontWeight: FontWeight.bold),
                              prefixIcon: Icon(Icons.lock_outline_rounded),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _obscureText = !_obscureText;
                                  });
                                },
                                child: Icon(_obscureText
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                              ),
                              hintText: "Again Password",
                              border: InputBorder.none),
                          obscureText: _obscureText,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ]),
              ),
            ),
            Center(
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      // begin:Alignment.center,
                      // end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 146, 240, 117),
                        Color.fromARGB(255, 20, 67, 197),
                      ]),
                  borderRadius: BorderRadius.circular(30),
                  // color: Color(0xff5C40CC)
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text(
                      "Daftar",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
              ),
            ),
            Container(
              // margin: EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Sudah Memiliki Akun?",
                          style: TextStyle(fontSize: 15, color: Colors.white)),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()));
                          },
                          child: Text(
                            "Masuk",
                            style: TextStyle(color: Color(0xff5C40CC)),
                          ))
                    ],
                  ),
                  Text("Terms and Conditions",
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                ],
              ),
            )
          ]),
        ],
      ),
    ));
  }
}
