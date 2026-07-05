import 'package:flutter/material.dart';

import 'product_images_section.dart';
import 'product_content_section.dart';
import 'product_reviews_section.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            ProductImagesSection(),
            SizedBox(height: 16),
            ProductContentSection(),
            SizedBox(height: 24),
            ProductReviewsSection(),
          ],
        ),
      ),
    );
  }
}
