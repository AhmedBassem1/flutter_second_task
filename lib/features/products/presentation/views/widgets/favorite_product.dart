import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_second_task/core/utils/app_sizes.dart';
import 'package:flutter_second_task/features/products/data/models/product_models/product_model.dart';
import 'package:flutter_second_task/features/products/presentation/controllers/product_controller/product_controller.dart';

class FavoriteProduct extends StatelessWidget {
  const FavoriteProduct({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<ProductController>().toggleFavorite(productModel);
      },
      child: Container(
        width: AppSizes.s30,
        height: AppSizes.s30,
        decoration: const BoxDecoration(
          color: Color(0xffA3A2A2),
          shape: BoxShape.circle,
        ),
        child: Icon(
          productModel.isFavorite
              ? Icons.favorite
              : Icons.favorite_border,
          size: AppSizes.icon14.sp,
          color: productModel.isFavorite
              ? const Color(0xffFF383C)
              : Colors.white,
        ),
      ),
    );
  }
}
