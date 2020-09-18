import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mi_peluqueriapp/constants.dart';
import 'package:mi_peluqueriapp/screens/home/components/home_body.dart';
import 'package:mi_peluqueriapp/screens/home/components/home_custom_bottom_nav_bar.dart';
import 'package:mi_peluqueriapp/screens/home/components/home_drawer_custom_blur.dart';

import 'package:mi_peluqueriapp/size_config.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({Key key}) : super(key: key);
  static String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Directionality(
        textDirection: TextDirection.rtl,
        child: CustomBlurDrawer(context: context),
        // child: customOldDrawer(context),
      ),
      appBar: _buildAppBar(),
      body: Container(
        child: Stack(
          children: <Widget>[
            HomeBody(),
            CustomBottomNavBar()
          ],
        ),
      ),
      // body: HomeBody(),
      // bottomNavigationBar: CustomBottomNavBar(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: false,
      title: Text(
        'Bienvenido Mi PeluqueriApp',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: kPrimaryColor,
          fontSize: getProportionteScreenWidth(20),
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: [
        Container(),
        // Builder(
        //   builder: (context) => IconButton(
        //     icon: Icon(Icons.filter),
        //     onPressed: () => Scaffold.of(context).openEndDrawer(),
        //     tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        //   ),
        // ),
      ],
    );
  }
}
