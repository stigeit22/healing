import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:healing_project/widget/custom_form.dart';

class formSignup extends StatelessWidget {
  const formSignup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin:Alignment.center,
                  end: Alignment.bottomCenter,
                  colors:[
                    Color(0xff5C40CC),
                    Colors.green,
                  ]

                )
              ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Container(
              margin: EdgeInsets.only(top: 70,left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Explore terus',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff1F1449)),
                  ),
                  Text(
                'keindahan alam  di sekitar kita',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1F1449)),
              )
                ],
              )),
        Container(
          margin: EdgeInsets.only(top: 20),
          child:  Center(
            child: Text(
                      'Healing Time',
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff1F1449)),
                    ),
          ),),
                  Padding(
                    padding: const EdgeInsets.all(30),
                    child: Container(
                      child: Column(children: [
                        CustomTextFormField(
              hint: "Full Name" ,
                typeinput: TextInputType.emailAddress,
                icon: Icon(Icons.person)),
            SizedBox(
              height: 10,
            ),
            Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white),
        // margin: EdgeInsets.only(bottom: 90),

        child: Container(
         
          child: TextFormField(
           
            decoration: InputDecoration(
              hintStyle: TextStyle(
                     
                      color: Colors.black,
                      fontFamily: "fonts/Poppins-Medium.ttf",fontWeight: FontWeight.bold),
                prefixIcon: Icon(
                  Icons.search,color: Colors.black,
                ),
                hintText: "Telusuri",
               
                border: InputBorder.none),
           
          ),
        ),
      ),
            CustomTextFormField(
              hint:"Email Addres",
                typeinput: TextInputType.emailAddress, icon: Icon(Icons.email)),
            SizedBox(
              height: 10,
            ),
            
            CustomTextFormField(
              hint:"Password",
                obscure: true,
                typeinput: TextInputType.emailAddress,
                icon: Icon(Icons.lock_outline_rounded)),
            SizedBox(
              height: 10,
            ),
            
            CustomTextFormField(
              hint:"Again Password",
                obscure: true,
                typeinput: TextInputType.emailAddress,
                icon: Icon(Icons.lock_outline_rounded)),
           




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
                  colors:[
                  //  Color(0xff5C40CC),
                    Colors.green,
                  ]

                ),
                borderRadius: BorderRadius.circular(30),
               // color: Color(0xff5C40CC)
                ),
          child: TextButton(onPressed: (){Get.toNamed("Login");}, child: Text("Daftar", style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),)),
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
                        style: TextStyle(fontSize: 15, color: Color(0xff9698A9))),
                        TextButton(onPressed: (){}, child: Text("Masuk"))
                  ],
                ),
                Text("Terms and Conditions",
                    style: TextStyle(fontSize: 15, color: Colors.black)),
              ],
            ),
          )
      ]),
    );
  }
}
