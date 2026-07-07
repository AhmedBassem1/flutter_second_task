import 'package:flutter/material.dart';
import 'package:flutter_second_task/core/utils/app_sizes.dart';
import 'package:flutter_second_task/features/products/data/models/product_models/product_model.dart';

import 'product_images_page_view.dart';
import 'dots_indicator.dart';

class ProductImagesSection extends StatefulWidget {
  const ProductImagesSection({super.key, required this.productModel});
  final ProductModel productModel;
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
        ProductImagesPageView(pageController: pageController, productModel: widget.productModel,),
        SizedBox(height: AppSizes.s18h),
        Center(child: DotsIndicator(currentPageIndex: currentPageIndex)),
      ],
    );
  }
}
