import 'package:flutter/material.dart';
import 'package:mi_peluqueriapp/components/button/default_button.dart';
import 'package:mi_peluqueriapp/constants.dart';
import 'package:mi_peluqueriapp/screens/home/home_screen.dart';
import 'package:mi_peluqueriapp/screens/sign_in/sign_in_screen.dart';
import 'package:mi_peluqueriapp/screens/splash/components/splash_content.dart';
import 'package:mi_peluqueriapp/services/auth.dart';
import 'package:mi_peluqueriapp/size_config.dart';

class SplashBody extends StatefulWidget {
  SplashBody({Key key}) : super(key: key);
  @override
  _SplashBodyState createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  @override
  void initState() {
    super.initState();
    getUser().then((user) {
      if (user != null) {
        Navigator.pushNamed(context, HomeScreen.routeName);
      }
    });
  }

  int currentPage = 0;

  List<Map<String, String>> splashData = [
    {
      "text": "Tu app de belleza \nUna nueva forma de interactuar entre \n peluquerías y clientes",
      'image': 'assets/images/logo_mipeluqueriapp.svg'
    },
    {
      "text": "Ayuda a las personas a conectar con \nlos profesionales de la belleza en Colombia",
      'image': 'assets/images/splash_2.jpg'
    },
    {"text": "Bienvenido", 'image': 'assets/images/login.svg'},
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
                        text: 'Continuar',
                        press: () {
                          Navigator.pushNamed(context, SignInScreen.routeName);
                        },
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
