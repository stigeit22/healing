import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:healing_project/widget/custom_form.dart';
class Formlogin extends StatelessWidget {
  const Formlogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin:Alignment.center,
                  end: Alignment.bottomCenter,
                  colors:[
                    Colors.yellow,
                    Colors.red,
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
              hint:"Email Addres",
                typeinput: TextInputType.emailAddress, icon: Icon(Icons.email)),
            SizedBox(
              height: 20,
            ),
            
            CustomTextFormField(
              hint:"Password",
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
                borderRadius: BorderRadius.circular(30),
                color: Color(0xff5C40CC)),
          child: TextButton(onPressed: (){Get.toNamed("Profil");}, child: Text("Masuk", style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),)),
        ),
                  ),
                  Center(child: TextButton(onPressed: (){Get.toNamed("Profil");}, child: Text("Lupa Pasword...?",
                  style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff5C40CC)),
                  ),
                  )),
                  Center(child: Text("Atau Masuk Dengan "),),
                  SizedBox(height: 20,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                       Container(
                       // margin: EdgeInsets.only(top: 20),
          height: 50,
          width: 120,
          decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xff5C40CC)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage("images/google.png",),height:24,width: 24,),
              TextButton(onPressed: (){Get.toNamed("");}, child: Text("Google", style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),)),
            ],
          ),
        ),
        Container(
          height: 50,
          width: 120,
          decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xff5C40CC)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage("images/fb.png",),height:24,width: 24,),
              TextButton(onPressed: (){Get.toNamed("Profil");}, child: Text("Facebook", style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),)),
            ],
          ),
        ),

                  ],),
                   Container(
           // margin: EdgeInsets.only(top: 10),
              child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Belum Memiliki Akun?",
                        style: TextStyle(fontSize: 15, color: Color(0xff9698A9))),
                        TextButton(onPressed: (){Get.toNamed("signUp");}, child: Text("Masuk"))
                  ],
                ),
                Text("Terms and Conditions",
                    style: TextStyle(fontSize: 15, color: Color(0xff9698A9))),

              ],
            ),
          )
      ]),
    );
  }
}