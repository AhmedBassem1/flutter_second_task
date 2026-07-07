import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_second_task/core/routes/app_routs.dart';
import 'package:flutter_second_task/core/utils/app_radius.dart';
import 'package:flutter_second_task/core/utils/colors.dart';
import 'package:flutter_second_task/features/products/data/models/product_models/product_model.dart';

import 'product_card_content.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.productDetailsView,arguments: productModel);
      },
      child: Container(
        decoration: BoxDecoration(
          color: kbackgroundColor,
          borderRadius: BorderRadius.circular(AppRadius.r16),
          border: Border.all(color: ksborderColor, width: 1.w),
        ),
        child: ProductCardContent(productModel: productModel),
      ),
    );
  }
}
