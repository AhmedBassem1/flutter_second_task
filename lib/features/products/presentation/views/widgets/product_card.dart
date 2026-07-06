import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_second_task/core/routes/app_routs.dart';
import 'package:flutter_second_task/core/utils/app_radius.dart';
import 'package:flutter_second_task/core/utils/colors.dart';

import 'product_card_content.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
          Navigator.pushNamed(context, AppRoutes.productDetailsView);

      },
      child: Container(
        decoration: BoxDecoration(
          color: kbackgroundColor,
          borderRadius: BorderRadius.circular(AppRadius.r16),
          border: Border.all(color: ksborderColor, width: 1.w),
        ),
        child: ProductCardContent(),
      ),
    );
  }
}
