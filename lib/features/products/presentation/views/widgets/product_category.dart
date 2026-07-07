import 'package:flutter/material.dart';
import 'package:flutter_second_task/core/utils/app_text_styles.dart';

class ProductCategory extends StatelessWidget {
  const ProductCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Accessories',
      style: AppTextStyles.s15w500,
    );
  }
}
