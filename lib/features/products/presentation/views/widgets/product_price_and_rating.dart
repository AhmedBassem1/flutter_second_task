import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_second_task/core/utils/app_sizes.dart';
import 'package:flutter_second_task/core/utils/app_text_styles.dart';
import 'package:flutter_second_task/features/products/data/models/product_models/product_model.dart';

class ProductPriceAndRating extends StatelessWidget {
  const ProductPriceAndRating({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '\$${productModel.price}',
          style: AppTextStyles.s14w700.copyWith(fontSize: 14),
        ),
        Row(
          children: [
            Icon(Icons.star_rounded, color: Color(0xFFFCD53F), size: AppSizes.icon16.sp),
            SizedBox(width: AppSizes.s4.w),
            Text(
              '${productModel.rating} (${productModel.reviews.length})',
              style: AppTextStyles.s12w400.copyWith(fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }
}
