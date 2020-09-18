import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mi_peluqueriapp/constants.dart';
import 'package:mi_peluqueriapp/data/models/Product_model.dart';
import 'package:mi_peluqueriapp/components/product_card.dart';
import 'package:mi_peluqueriapp/screens/home/components/home_popular_products.dart';
import 'package:mi_peluqueriapp/screens/home/components/home_section_catergories.dart';
import 'package:mi_peluqueriapp/screens/home/components/home_discount_banner.dart';
import 'package:mi_peluqueriapp/screens/home/components/home_header.dart';
import 'package:mi_peluqueriapp/screens/home/components/home_section_title.dart';
import 'package:mi_peluqueriapp/screens/home/components/home_special_offers.dart';
import 'package:mi_peluqueriapp/size_config.dart';

class HomeBody extends StatefulWidget {
  HomeBody({Key key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            // SizedBox(height: getProportionteScreenWidth(8)),
            // HomeHeader(),
            // SizedBox(height: getProportionteScreenWidth(15)),
            DiscountBanner(
              press: () {},
              subtitle: 'Cashback 20%',
              title: 'A Summer Surpise',
            ),
            SizedBox(height: getProportionteScreenWidth(10)),
            SectionCategories(),
            SizedBox(height: getProportionteScreenWidth(10)),
            SpecialOffers(),
            SizedBox(height: getProportionteScreenWidth(10)),
            PopularProducts(),
            SizedBox(height: getProportionteScreenWidth(20)),
          ],
        ),
      ),
    );
  }
}
