import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'product_reviews_header.dart';
import 'review_grid_view.dart';

class ProductReviewsSection extends StatelessWidget {
  const ProductReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductReviewsHeader(),
        SizedBox(height: 16.h),
        ReviewGridView(),
      ],
    );
  }
}
