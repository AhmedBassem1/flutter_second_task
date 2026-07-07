import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_second_task/core/utils/app_sizes.dart';
import 'package:flutter_second_task/core/widgets/custom_error_widget.dart';
import 'package:flutter_second_task/features/products/presentation/controllers/product_controller/product_controller.dart';
import 'package:flutter_second_task/features/products/presentation/controllers/product_controller/product_state.dart';

import 'product_card.dart';

class ProductViewBody extends StatelessWidget {
  const ProductViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.padding16),
      child: BlocBuilder<ProductController, ProductState>(
        builder: (BuildContext context, ProductState state) {
          final product = state.products;
          if (state.isInitial || state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (product.isEmpty) {
            return  Center(child: CustomErrorWidget(errMessage: state.errorMessage),);
          }
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.w,
              mainAxisSpacing: 16.h,
              mainAxisExtent: 300.h,
            ),
            itemCount: state.products.length,
            itemBuilder: (context, index) {
              return ProductCard(productModel: product[index],);
            },
          );
        },
      ),
    );
  }
}
