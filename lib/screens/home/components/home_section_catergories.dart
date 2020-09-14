
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mi_peluqueriapp/screens/home/components/home_category_card.dart';
import 'package:mi_peluqueriapp/size_config.dart';

class SectionCategories extends StatelessWidget {
  const SectionCategories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": FontAwesomeIcons.flask, "text": "Flash Bot"},
      {"icon": FontAwesomeIcons.accusoft, "text": "Tecnologia"},
      {"icon": FontAwesomeIcons.appleAlt, "text": "Super mercado"},
      {"icon": FontAwesomeIcons.hamburger, "text": "Comidas Rapidas"},
      {"icon": FontAwesomeIcons.caravan, "text": "Servicios"},
      {"icon": FontAwesomeIcons.handPeace, "text": "Aseo"},
      {"icon": FontAwesomeIcons.untappd, "text": "Transporte"},
      {"icon": FontAwesomeIcons.notesMedical, "text": "Salud"},
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionteScreenWidth(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...List.generate(
              categories.length,
              (index) => CategoryCard(
                icon: categories[index]["icon"],
                text: categories[index]["text"],
                press: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
