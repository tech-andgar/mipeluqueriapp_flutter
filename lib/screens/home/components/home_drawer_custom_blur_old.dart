import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mi_peluqueriapp/constants.dart';
import 'package:mi_peluqueriapp/services/auth.dart';
import 'package:mi_peluqueriapp/size_config.dart';

class CustomOldDrawer extends StatelessWidget {
  const CustomOldDrawer({
    Key key,
    @required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaY: 1.0,
          sigmaX: 1.0,
        ),
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: kPrimaryColor,
              ),
              accountName: Text(
                'Andrés García',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: getProportionteScreenWidth(24),
                ),
              ),
              accountEmail: Text('abc@abc.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Theme.of(context).platform == TargetPlatform.iOS ? Colors.blueGrey : Colors.white,
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold, color: kPrimaryColor),
                ),
              ),
            ),
            ListTile(
              title: Text(
                "Inicio",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Solicitud Servicio',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                // Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                "Historial",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                //   Navigator.pop(context);
              },
            ),
            ListTile(
                // title: Text('Item 2'),
                // onTap: () {
                //   Navigator.pop(context);
                // },
                ),
            ListTile(
                // title: Text('Item 2'),
                // onTap: () {
                //   Navigator.pop(context);
                // },
                ),
            ListTile(
                // title: Text('Item 3'),
                // onTap: () {
                //   Navigator.pop(context);
                // },
                ),
            Container(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Column(
                  children: [
                    Divider(),
                    // ListTile(
                    //   leading: Icon(Icons.settings),
                    //   title: Text('Configuración'),
                    // ),
                    ListTile(),
                    ListTile(
                      leading: Icon(Icons.exit_to_app),
                      title: Text('Cerrar sesión'),
                      onTap: () {
                        signOutAndToHome(context);
                        // Navigator.pop(context);
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
