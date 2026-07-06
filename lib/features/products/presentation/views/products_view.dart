import 'package:flutter/material.dart';
import 'package:flutter_second_task/core/utils/app_strings.dart';
import 'package:flutter_second_task/core/utils/app_text_styles.dart';
import 'package:flutter_second_task/core/utils/colors.dart';

import 'widgets/product_view_body.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      appBar: AppBar(
        title: Center(
          child: Text(
            AppStrings.products,
            style: AppTextStyles.s20w600
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ProductViewBody(),
    );
  }
}
