import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_second_task/features/products/data/models/product_models/product_model.dart';

class ProductsImages extends StatelessWidget {
  const ProductsImages({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 305,
      decoration: BoxDecoration(
        image:  DecorationImage(
          image: NetworkImage(productModel.images),
          fit: BoxFit.cover,
        ),
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(16.r),
      ),
    );
  }
}
