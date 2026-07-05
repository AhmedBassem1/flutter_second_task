import 'package:flutter/material.dart';

import 'product_name_and_category.dart';
import 'product_price_and_rating.dart';

class ProductCardDetails extends StatelessWidget {
  const ProductCardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [ProductNameAndCategory(), ProductPriceAndRating()],
      ),
    );
  }
}
