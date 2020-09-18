import 'package:flutter/material.dart';
import 'package:mi_peluqueriapp/constants.dart';
import 'package:mi_peluqueriapp/screens/home/components/home_categories_services_card.dart';
import 'package:mi_peluqueriapp/screens/home/components/home_section_title.dart';
import 'package:mi_peluqueriapp/size_config.dart';

class CategoriesServices extends StatelessWidget {
  const CategoriesServices({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Servicios Especiales para ti",
          press: () {},
          enabledClickedMore: false,
        ),
        SizedBox(height: getProportionteScreenWidth(10)),
        Wrap(
          alignment: WrapAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: [
            CategoriesServicesCard(
              image: Image.network(
                'https://loremflickr.com/320/240/cut,hair',
                height: getProportionteScreenWidth(140),
                fit: BoxFit.cover,
              ),
              titleCategory: "Cortes de cabello",
              numOfBrands: 100,
              press: () {},
            ),
            CategoriesServicesCard(
              image: Image.network(
                'https://loremflickr.com/320/240/hairstyles,hairdresser',
                height: getProportionteScreenWidth(140),
                fit: BoxFit.cover,
              ),
              titleCategory: "Peinados",
              numOfBrands: 120,
              press: () {},
            ),
            CategoriesServicesCard(
              image: Image.network(
                'https://loremflickr.com/320/240/manicure,nails',
                height: getProportionteScreenWidth(140),
                fit: BoxFit.cover,
              ),
              titleCategory: "Manicure",
              numOfBrands: 420,
              press: () {},
            ),
            CategoriesServicesCard(
              image: Image.network(
                'https://loremflickr.com/320/240/pedicure,nails',
                height: getProportionteScreenWidth(140),
                fit: BoxFit.cover,
              ),
              titleCategory: "Pedicure",
              numOfBrands: 420,
              press: () {},
            ),
          ],
        ),
      ],
    );
  }
}
