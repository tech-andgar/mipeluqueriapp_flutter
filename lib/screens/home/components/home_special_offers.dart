import 'package:flutter/material.dart';
import 'package:mi_peluqueriapp/screens/home/components/home_section_title.dart';
import 'package:mi_peluqueriapp/size_config.dart';


class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Especiales para ti",
          press: () {},
        ),
        SizedBox(height: getProportionteScreenWidth(10)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: Image.network(
                  'https://picsum.photos/id/6/1900/1080/?blur=3',
                  width: 300,
                  fit: BoxFit.fitWidth,
                ),
                titleCategory: "Tecnologia",
                numOfBrands: 100,
                press: () {},
              ),
              SpecialOfferCard(
                image: Image.network(
                  'https://picsum.photos/id/1060/1900/1080/?blur=3',
                  width: 300,
                  fit: BoxFit.fitWidth,
                ),
                titleCategory: "Comida",
                numOfBrands: 120,
                press: () {},
              ),
              SpecialOfferCard(
                image: Image.network(
                  'https://picsum.photos/id/1059/1900/1080/?blur=3',
                  width: 300,
                  fit: BoxFit.fitWidth,
                ),
                titleCategory: "Ropa",
                numOfBrands: 420,
                press: () {},
              ),
              SizedBox(width: getProportionteScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
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
      padding: EdgeInsets.only(left: getProportionteScreenWidth(20)),
      child: SizedBox(
        width: getProportionteScreenWidth(242),
        height: getProportionteScreenWidth(100),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            // alignment: Alignment.center,
            children: [
              Container(
                // decoration: BoxDecoration(
                //   // border: Border.all(color: kPrimaryColor, width: 2.0),
                // borderRadius: BorderRadius.circular(16),
                //   boxShadow: [
                //     BoxShadow(
                //       offset: Offset(0.0, 4.0),
                //       spreadRadius: -8.0,
                //       color: Colors.black,
                //       blurRadius: 12.0,
                //     ),
                //   ],
                // ),
                child: ClipRRect(borderRadius: BorderRadius.circular(16), child: image),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0XFF343434).withOpacity(0.8),
                      Color(0XFF343434).withOpacity(0.15),
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
                      TextSpan(text: "$numOfBrands marcas")
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
