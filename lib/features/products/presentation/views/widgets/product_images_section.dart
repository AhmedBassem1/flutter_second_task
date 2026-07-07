import 'package:flutter/material.dart';
import 'package:flutter_second_task/core/utils/app_sizes.dart';

import 'product_images_page_view.dart';
import 'dots_indicator.dart';

class ProductImagesSection extends StatefulWidget {
  const ProductImagesSection({super.key});

  @override
  State<ProductImagesSection> createState() => _ProductImagesSectionState();
}

class _ProductImagesSectionState extends State<ProductImagesSection> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImagesPageView(pageController: pageController),
        SizedBox(height: AppSizes.s18h),
        Center(child: DotsIndicator(currentPageIndex: currentPageIndex)),
      ],
    );
  }
}
