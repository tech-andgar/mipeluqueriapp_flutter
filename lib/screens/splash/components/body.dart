import 'package:MIPELUQUERIAPP/screens/splash/components/splash_content.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  Body({Key key}) : super(key: key);
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
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
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]['image'],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(),
            )
          ],
        ),
      ),
    );
  }
}
