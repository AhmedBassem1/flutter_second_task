import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

import 'products_images.dart';

class ProductImagesPageView extends StatelessWidget {
  const ProductImagesPageView({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      children: List.generate(3, (index) => ProductsImages()),
    );
  }
}
