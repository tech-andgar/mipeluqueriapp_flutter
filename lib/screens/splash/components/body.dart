import 'dart:ui';

import 'package:MIPELUQUERIAPP/components/button/default_button.dart';
import 'package:MIPELUQUERIAPP/constants.dart';
import 'package:MIPELUQUERIAPP/screens/splash/components/splash_content.dart';
import 'package:MIPELUQUERIAPP/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  List<Map<String, String>> splashData = [
    {"text": "Mi PeluqueriApp", 'image': 'assets/images/splash_1.jpg'},
    {"text": "Bienvienido al Mi PeluqueriApp, vamos pedirla!", 'image': 'assets/images/splash_1.jpg'},
    {"text": "Nos Ayuda personas conectar con los profesionales en Colombia", 'image': 'assets/images/splash_2.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]['image'],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionteScreenWidth(20),
                ),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: getProportionteScreenWidth(56),
                      child: DefaultButton(
                        text: 'Contiunar',
                        press: () {},
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
