import 'package:flutter/material.dart';
import 'package:mi_peluqueriapp/screens/home/components/home_body.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({Key key}) : super(key: key);
  static String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Home'),
      // ),
      body: HomeBody(),
    );
  }
}
