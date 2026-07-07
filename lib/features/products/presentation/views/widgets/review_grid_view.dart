import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_second_task/features/products/data/models/product_models/product_model.dart';

import 'review_card.dart';

class ReviewGridView extends StatelessWidget {
  const ReviewGridView({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.w,
        mainAxisSpacing: 16.h,
        mainAxisExtent: 180.h,
      ),
      itemCount: productModel.reviews.length,
      itemBuilder: (context, index) {
        return ReviewCard(reviewModel: productModel.reviews[index],);
      },
    );
  }
}
