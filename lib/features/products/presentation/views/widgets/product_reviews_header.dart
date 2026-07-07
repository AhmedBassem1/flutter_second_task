import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_second_task/core/utils/app_sizes.dart';
import 'package:flutter_second_task/core/utils/app_text_styles.dart';
import 'package:flutter_second_task/core/utils/colors.dart';
import 'package:flutter_second_task/features/products/data/models/product_models/product_model.dart';

class ProductReviewsHeader extends StatelessWidget {
  const ProductReviewsHeader({super.key, required this.productModel});
final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Reviews',
              style: AppTextStyles.s16w600,
            ),
            Row(
              children: [
                Icon(Icons.star_rounded, color: kstarIconColor, size: AppSizes.icon16.sp),
                SizedBox(width: AppSizes.s4w),
                Text(
                  "${productModel.rating}",
                  style: AppTextStyles.s18w500,
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: AppSizes.s4h),
        Text(
          '${productModel.reviews.length}',
          style: AppTextStyles.s14w400,
        ),
      ],
    );
  }
}
