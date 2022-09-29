import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../bootmNavigator/bottomNavigator.dart';

class onboarding extends StatefulWidget {
  const onboarding({super.key});
  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  final controller = PageController();
  bool isLastPage = false;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          padding: EdgeInsets.only(bottom: 150),
          child: PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(() => isLastPage = index == 2);
            },
            children: [
              buildPage(
                img: 'images/on1.png',
                subtitle:
                    'Nikmatin berbagai kemudahan yang akan\nmenambah suasana berlibur menjadi lebih peraktis\ndan juga menyenangkan',
                title: 'Explore easy tour with Us',
              ),
              buildPage(
                img: 'images/on3.png',
                subtitle:
                    'Perjalanan anda semakin seru dan\nmenyenangkan dengan berbagai penawaran menarik\ndan promo yang seru ',
                title: 'Various user features',
              ),
              buildPage(
                img: 'images/on2.png',
                subtitle:
                    'Jutaan pengguna sudah membuktikannya\nsekarang giliran Anda !!',
                title: 'Get ready to explore it !!',
              ),
            ],
          ),
        ),
        bottomSheet: isLastPage
            ? TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    primary: Colors.white,
                    backgroundColor: Colors.blue,
                    minimumSize: Size.fromHeight(70)),
                child: Text('Mulai'),
                onPressed: () async {
                  // final Prefets = await SharedPreferences.getInstance();
                  // Prefets.setBool('showHome', true);
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => buttomNavigator()));
                },
              )
            : Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 80,
                child: Container(
                  child: Column(
                    children: [
                      Center(
                        child: SmoothPageIndicator(
                          controller: controller,
                          count: 3,
                          effect: WormEffect(
                            spacing: 16,
                            dotColor: Colors.black26,
                            activeDotColor: Colors.teal.shade700,
                          ),
                          onDotClicked: (indext) => controller.animateToPage(
                              indext,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                  onPressed: () => controller.jumpToPage(2),
                                  child: Text("Skip")),
                              TextButton(
                                  onPressed: () => controller.nextPage(
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.easeInOut),
                                  child: Text("Next"))
                            ]),
                      ),
                    ],
                  ),
                ),
              ),
      );
}

Widget buildPage({
  required String img,
  required String title,
  required String subtitle,
}) =>
    Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            img,
            height: 225,
            width: 225,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            subtitle,
            style: TextStyle(fontSize: 14),
          )
        ],
      ),
    );
