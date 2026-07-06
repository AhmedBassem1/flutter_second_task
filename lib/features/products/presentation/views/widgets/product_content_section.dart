import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'product_category.dart';
import 'product_title_and_price.dart';
import 'product_details.dart';

class ProductContentSection extends StatelessWidget {
  const ProductContentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProductCategory(),
        SizedBox(height: 12.h),
        ProductTitleAndPrice(),
        SizedBox(height: 32.h),
        ProductDetails(),
      ],
    );
  }
}
