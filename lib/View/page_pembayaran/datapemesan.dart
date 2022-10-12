import 'package:flutter/material.dart';

import '../metode_pembayaran/BankBCA/metodebayarBCA.dart';

class datapemesan extends StatefulWidget {
  @override
  State<datapemesan> createState() => _datapemesanState();
}

class _datapemesanState extends State<datapemesan> {
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5C40CC),
        title: Text("Lengkapi Data"),
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
          primary: Color(0xff5C40CC),
        )),
        child: Stepper(
            type: StepperType.horizontal,
            steps: getStep(),
            currentStep: currentStep,
            onStepContinue: () {
              final isLastStep = currentStep == getStep().length - 1;
              if (isLastStep) {
                print('berhasil');
              } else {
                setState(() => currentStep += 1);
              }
            },
            onStepTapped: (step) => setState(() => currentStep = step),
            onStepCancel: currentStep == 0
                ? null
                : () => setState(() => currentStep -= 1),
            controlsBuilder: (BuildContext context, ControlsDetails details) {
              return Container(
                  child: Row(
                children: <Widget>[
                  TextButton(
                    onPressed: details.onStepContinue,
                    child: Text(''),
                  ),
                  if (currentStep != 0)
                    TextButton(
                      onPressed: details.onStepCancel,
                      child: Text(' '),
                    ),
                ],
              ));
            }),
      ),
    );
  }

  List<Step> getStep() => [
        Step(
          state: currentStep > 0 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 0,
          title: Text("Lengkapi Data"),
          content: Container(
              child: Column(
            children: [
              Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pesanan Anda",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Icon(Icons.bus_alert_rounded),
                      Text("Jakarta  ->  Bandung")
                    ],
                  ),
                  SizedBox(height: 20),
                  Divider(
                    color: Colors.grey,
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Harga Total ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Rp70.000",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text("1 penumpang"),
                  SizedBox(height: 20),
                  Divider(
                    color: Colors.grey,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Tanggal",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text("Jum’at, 15 Juli 2022"),
                  SizedBox(height: 10),
                  Text("18:00(Jakarta)-->  20:30(Bandung)"),
                ],
              )),
              SizedBox(height: 30),
              Container(
                child: Column(
                  children: [
                    TextField(
                      autofocus: true,
                      decoration: InputDecoration(
                        label: Text("Nama Pemeasn"),

                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff5C40CC)),
                            borderRadius: BorderRadius.circular(5)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff5C40CC)),
                            borderRadius: BorderRadius.circular(5)),
                        // border:OutlineInputBorder (borderSide: BorderSide.),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      autofocus: true,
                      decoration: InputDecoration(
                        label: Text("Email"),

                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff5C40CC)),
                            borderRadius: BorderRadius.circular(5)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff5C40CC)),
                            borderRadius: BorderRadius.circular(5)),

                        // border:OutlineInputBorder (borderSide: BorderSide.),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                        decoration: BoxDecoration(
                            color: Color(0xff5C40CC),
                            borderRadius: BorderRadius.circular(30)),
                        width: 100,
                        height: 50,
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "SIMPAN",
                              style: TextStyle(color: Colors.white),
                            )))
                  ],
                ),
              )
            ],
          )),
        ),
        Step(
          state: currentStep > 1 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 1,
          title: Text("Pembayaran"),
          content: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Transfer Bank",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage("images/bca.png"),
                                    width: 30,
                                    height: 30,
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  metodeBca()));
                                    },
                                    child: Text("Bank Central Asia",
                                        style: TextStyle(
                                          color: Colors.black,
                                        )),
                                  ),
                                ],
                              ),
                              Icon(Icons.arrow_right),
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
                                    image: AssetImage("images/mandiri.png"),
                                    width: 30,
                                    height: 30,
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  metodeBca()));
                                    },
                                    child: Text("Bank Mandiri",
                                        style: TextStyle(
                                          color: Colors.black,
                                        )),
                                  ),
                                ],
                              ),
                              Icon(Icons.arrow_right),
                            ]),
                      ),
                      SizedBox(height: 10),
                      Divider(color: Colors.grey),
                      SizedBox(height: 10),
                      Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage("images/bri.png"),
                                    width: 30,
                                    height: 30,
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  metodeBca()));
                                    },
                                    child: Text("Bank Rakyat Indonesia",
                                        style: TextStyle(
                                          color: Colors.black,
                                        )),
                                  ),
                                ],
                              ),
                              Icon(Icons.arrow_right),
                            ]),
                      ),
                      SizedBox(height: 10),
                      Divider(color: Colors.grey),
                      SizedBox(height: 10),
                      Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage("images/bni.png"),
                                    width: 30,
                                    height: 30,
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  metodeBca()));
                                    },
                                    child: Text("Bank Negara Indonesia",
                                        style: TextStyle(
                                          color: Colors.black,
                                        )),
                                  ),
                                ],
                              ),
                              Icon(Icons.arrow_right),
                            ]),
                      ),
                      SizedBox(height: 10),
                      Divider(color: Colors.grey),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Virtual Account",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage("images/mandiri.png"),
                                    width: 30,
                                    height: 30,
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  metodeBca()));
                                    },
                                    child: Text("Virtual Acount Mandiri",
                                        style: TextStyle(
                                          color: Colors.black,
                                        )),
                                  ),
                                ],
                              ),
                              Icon(Icons.arrow_right),
                            ]),
                      ),
                      SizedBox(height: 10),
                      Divider(color: Colors.grey),
                      SizedBox(height: 10),
                      Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image(
                                    image: AssetImage("images/bca.png"),
                                    width: 30,
                                    height: 30,
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  metodeBca()));
                                    },
                                    child: Text(
                                      "Virtual Acount BCA",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Icon(Icons.arrow_right),
                            ]),
                      ),
                      SizedBox(height: 10),
                      Divider(color: Colors.grey),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ];
}
