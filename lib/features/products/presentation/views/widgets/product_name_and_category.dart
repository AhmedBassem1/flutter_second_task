import 'package:flutter/material.dart';
import 'package:flutter_second_task/core/utils/app_text_styles.dart';

class ProductNameAndCategory extends StatelessWidget {
  const ProductNameAndCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Laptops',
          style: AppTextStyles.s12w400,
        ),
        Text(
          'MacBook Pro 14',
          style: AppTextStyles.s14w500,
        ),
      ],
    );
  }
}
