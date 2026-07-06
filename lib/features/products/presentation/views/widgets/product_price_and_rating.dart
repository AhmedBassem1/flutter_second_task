import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_second_task/core/utils/app_sizes.dart';
import 'package:flutter_second_task/core/utils/app_text_styles.dart';

class ProductPriceAndRating extends StatelessWidget {
  const ProductPriceAndRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          r'$1,999',
          style: AppTextStyles.s14w700,
        ),
        Row(
          children: [
            Icon(Icons.star_rounded, color: Color(0xFFFCD53F), size: AppSizes.icon16.sp),
            SizedBox(width: AppSizes.s4.w),
            Text(
              '4.5 (9)',
              style: AppTextStyles.s12w400,
            ),
          ],
        ),
      ],
    );
  }
}
