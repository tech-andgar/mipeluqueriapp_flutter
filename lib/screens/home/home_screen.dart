import 'package:flutter/material.dart';
import 'package:mi_peluqueriapp/constants.dart';
import 'package:mi_peluqueriapp/screens/home/components/home_body.dart';
import 'package:mi_peluqueriapp/screens/home/components/home_custom_bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({Key key}) : super(key: key);
  static String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: HomeBody(),
      bottomNavigationBar: CustomBottomNavBar(),
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
