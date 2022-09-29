import 'package:flutter/material.dart';

class Bonus_Saldo extends StatelessWidget {
  const Bonus_Saldo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 50, left: 10),
              width: 300,
              height: 200,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/1.png"), fit: BoxFit.cover),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Nama",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Kazana Silvia",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                      Row(
                        children: [
                          Icon(Icons.paypal_sharp),
                          Text("Pay",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                        ],
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 60),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Balance",
                            style:
                                TextStyle(color: Colors.white, fontSize: 14)),
                        Text("IDR 280.000.000",
                            style: TextStyle(color: Colors.white, fontSize: 26))
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: Column(
                children: [
                  Container(
                    child: Text('Big Bonus 🎉 ',
                        style:
                            TextStyle(color: Color(0xff1F1449), fontSize: 32)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                        'We give you early credit so that\n     you can buy a flight ticket ',
                        style:
                            TextStyle(color: Color(0xff9698A9), fontSize: 16)),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 50,
              ),
              height: 55,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: Color(0xff5C40CC)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Start Fly Now',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
