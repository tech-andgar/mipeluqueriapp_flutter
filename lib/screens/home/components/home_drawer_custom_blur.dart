import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mi_peluqueriapp/constants.dart';
import 'package:mi_peluqueriapp/size_config.dart';

class CustomBlurDrawer extends StatefulWidget {
  const CustomBlurDrawer({
    Key key,
    @required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  _CustomBlurDrawerState createState() => _CustomBlurDrawerState();
}

class _CustomBlurDrawerState extends State<CustomBlurDrawer> {
  String dropdownValue = 'Bogotá';

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: Container(
        width: SizeConfig.screenWidth * 0.57,
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaY: 5.0,
                sigmaX: 5.0,
              ),
              child: Container(
                decoration: BoxDecoration(color: kSecondaryColor.withOpacity(0.5)),
                child: ListView(
                  children: [
                    UserAccountsDrawerHeader(
                      decoration: BoxDecoration(
                        color: kSecondaryColor,
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
                      title: DropdownButton<String>(
                        value: dropdownValue,
                        // icon: Icon(Icons.arrow_downward),
                        // iconSize: 24,
                        elevation: 16,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          // backgroundColor: kPrimaryColor,
                        ),
                        // underline: Container(
                        //   height: 2,
                        //   color: Colors.deepPurpleAccent,
                        // ),
                        onChanged: (String newValue) {
                          setState(() {
                            dropdownValue = newValue;
                          });
                        },
                        items: <String>['Bogotá', 'Medellin', 'Cali', 'Barranquilla'].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColor,
                                // backgroundColor: kPrimaryColor,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                      // title: Text(
                      //   "Ciudad: Bogota",
                      //   style: TextStyle(
                      //     fontWeight: FontWeight.bold,
                      //     color: Colors.white,
                      //   ),
                      // ),
                      hoverColor: Colors.black,
                      leading: NeumorphicIcon(
                        Icons.person_pin_circle,
                        size: 28,
                        style: NeumorphicStyle(
                          shape: NeumorphicShape.convex,
                          surfaceIntensity: 1.0,
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
            )
          ],
        ),
      ),
    );
  }
}
