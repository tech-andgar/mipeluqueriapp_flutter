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
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: kPrimaryColor,
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: ClipOval(
            child: Image.network('https://picsum.photos/id/6/600/600'),
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
