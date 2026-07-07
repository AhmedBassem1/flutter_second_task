import 'package:flutter/material.dart';
import 'package:flutter_second_task/core/utils/app_sizes.dart';

import 'product_reviews_header.dart';
import 'review_grid_view.dart';

class ProductReviewsSection extends StatelessWidget {
  const ProductReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductReviewsHeader(),
        SizedBox(height: AppSizes.s16h),
        ReviewGridView(),
      ],
    );
  }
}
