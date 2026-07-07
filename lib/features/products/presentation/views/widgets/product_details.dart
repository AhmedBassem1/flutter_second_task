import 'package:flutter/material.dart';
import 'package:flutter_second_task/core/utils/app_text_styles.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Advanced health monitoring with body composition analysis. Wear OS powered by Samsung. Sapphire Crystal glass. Up to 40 hours battery life.',
      style: AppTextStyles.s14w400,
    );
  }
}
