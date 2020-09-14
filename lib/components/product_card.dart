import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mi_peluqueriapp/constants.dart';
import 'package:mi_peluqueriapp/data/models/Product_model.dart';
import 'package:mi_peluqueriapp/size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.width = 140,
    this.aspectRatio = 1.02,
    @required this.product,
  }) : super(key: key);

  final double width, aspectRatio;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionteScreenWidth(20)),
      child: SizedBox(
        width: getProportionteScreenWidth(width),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: aspectRatio,
              child: Container(
                padding: EdgeInsets.all(
                  getProportionteScreenWidth(20),
                ),
                decoration: BoxDecoration(
                  color: kSecondaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.network('https://picsum.photos/id/6/1900/1080'),
              ),
            ),
            SizedBox(height: 5),
            Text(
              product.title,
              style: TextStyle(color: Colors.black),
              maxLines: 2,
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$ ${product.price.toString()}',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: getProportionteScreenWidth(18),
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 2,
                ),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    padding: EdgeInsets.all(getProportionteScreenWidth(5)),
                    width: getProportionteScreenWidth(28),
                    height: getProportionteScreenWidth(28),
                    decoration: BoxDecoration(
                      color: product.isFavourite ? kSecondaryColor.withOpacity(0.15) : kSecondaryColor.withOpacity(0.1),
                      shape: BoxShape.circle,
                    ),
                    child: _buildIconCheckType(
                      icon: FontAwesomeIcons.heart,
                      color: product.isFavourite ? Color(0xFFFF4848) : Color(0xFFDDBDEE4),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconCheckType({dynamic icon, Color color = null}) {
    if (icon is String) {
      return (icon.contains('svg'))
          ? SvgPicture.asset(
              icon,
              height: getProportionteScreenHeight(265),
              width: getProportionteScreenWidth(235),
            )
          : Image.asset(
              icon,
              height: getProportionteScreenHeight(265),
              width: getProportionteScreenWidth(235),
            );
    } else if (icon is IconData) {
      return Icon(
        icon,
        size: getProportionteScreenWidth(16),
        color: color,
      );
    } else {
      throw ErrorWidget('unknow type icon');
    }
  }
}
