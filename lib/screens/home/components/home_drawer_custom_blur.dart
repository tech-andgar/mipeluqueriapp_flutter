import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mi_peluqueriapp/constants.dart';
import 'package:mi_peluqueriapp/size_config.dart';

class CustomBlurDrawer extends StatelessWidget {
  const CustomBlurDrawer({
    Key key,
    @required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: Container(
        width: SizeConfig.screenWidth * 0.55,
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaY: 5.0,
                sigmaX: 5.0,
              ),
              child: Container(
                decoration: BoxDecoration(color: kPrimaryColor.withOpacity(0.5)),
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
                        backgroundColor:
                            Theme.of(context).platform == TargetPlatform.iOS ? Colors.blueGrey : Colors.white,
                        child: Text(
                          "A",
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Ciudad: Bogota",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        // Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: Text(
                        'Cuenta',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        // Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      // title: Text(
                      //   "Historial",
                      //   style: TextStyle(
                      //     fontWeight: FontWeight.bold,
                      //     color: Colors.white,
                      //   ),
                      // ),
                      // onTap: () {
                      //   //   Navigator.pop(context);
                      // },
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
                              leading: Icon(
                                Icons.exit_to_app,
                                color: Colors.white,
                              ),
                              title: Text(
                                'Cerrar sesión',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              onTap: () {
                                // signOutAndToHome(context);
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
            )
          ],
        ),
      ),
    );
  }
}
