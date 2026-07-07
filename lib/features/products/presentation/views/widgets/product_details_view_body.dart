import 'package:flutter/material.dart';
import 'package:flutter_second_task/core/utils/app_radius.dart';
import 'package:flutter_second_task/core/utils/app_sizes.dart';
import 'package:flutter_second_task/features/products/data/models/product_models/product_model.dart';

import 'product_images_section.dart';
import 'product_content_section.dart';
import 'product_reviews_section.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)!.settings.arguments as ProductModel;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppRadius.r16),
        child: Column(
          children: [
            ProductImagesSection(productModel: product,),
            SizedBox(height: AppSizes.s16h),
            ProductContentSection(productModel: product,),
            SizedBox(height: AppSizes.s24h),
            ProductReviewsSection(productModel: product,),
          ],
        ),
      ),
    );
  }
}
