
import 'package:flutter/material.dart';
import 'package:mi_peluqueriapp/size_config.dart';

class CategoriesServicesCard extends StatelessWidget {
  const CategoriesServicesCard({
    Key key,
    @required this.image,
    @required this.press,
    @required this.titleCategory,
    @required this.numOfBrands,
  }) : super(key: key);
  final GestureTapCallback press;
  final Image image;
  final String titleCategory;
  final int numOfBrands;

  @override
  Widget build(BuildContext context) {
    return Padding(
      // padding: EdgeInsets.only(right: getProportionteScreenWidth(20), bottom: getProportionteScreenWidth(20)),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionteScreenWidth(10),
        vertical: getProportionteScreenWidth(10),
      ),
      child: SizedBox(
        width: getProportionteScreenWidth(155),
        height: getProportionteScreenWidth(125),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            // alignment: Alignment.center,
            children: [
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: image,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0XFF343434).withOpacity(0.9),
                      Color(0XFF343434).withOpacity(0.1),
                    ],
                  ),
                ),
              ),
              Material(
                type: MaterialType.transparency,
                child: InkWell(
                  borderRadius: BorderRadius.circular(16),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionteScreenWidth(20),
                  vertical: getProportionteScreenWidth(15),
                ),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
                        text: "$titleCategory\n",
                        style: TextStyle(
                          fontSize: getProportionteScreenWidth(18),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: "$numOfBrands Profesionales")
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
