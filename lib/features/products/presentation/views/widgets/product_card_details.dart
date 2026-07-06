import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'product_name_and_category.dart';
import 'product_price_and_rating.dart';

class ProductCardDetails extends StatelessWidget {
  const ProductCardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(10.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [ProductNameAndCategory(), ProductPriceAndRating()],
      ),
    );
  }
}
