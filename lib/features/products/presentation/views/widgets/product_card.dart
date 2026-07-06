import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_second_task/core/utils/colors.dart';

import '../product_details_view.dart';
import 'product_card_content.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProductDetailsView(),
          )
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: kbackgroundColor,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(color: ksborderColor, width: 1.w),
        ),
        child: ProductCardContent(),
      ),
    );
  }
}
