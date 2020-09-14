
import 'package:flutter/material.dart';
import 'package:mi_peluqueriapp/components/product_card.dart';
import 'package:mi_peluqueriapp/data/models/Product_model.dart';
import 'package:mi_peluqueriapp/screens/home/components/home_section_title.dart';
import 'package:mi_peluqueriapp/size_config.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: 'Popular productos', press: () {}),
        SizedBox(height: getProportionteScreenWidth(10)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                5,
                (index) => ProductCard(
                  product: Product(
                    title: 'Portatil Apple Macbook Pro 2020 Intel Core i5 10th',
                    colors: [],
                    description: null,
                    images: [],
                    price: 500000,
                    isFavourite: true,
                  ),
                ),
              ),
              SizedBox(width: getProportionteScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}
