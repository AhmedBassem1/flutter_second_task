import 'package:flutter/material.dart';
import 'package:flutter_second_task/core/utils/colors.dart';

class ProductsImages extends StatelessWidget {
  const ProductsImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 305,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/images/assets_tast.jpg'),
          fit: BoxFit.cover,
        ),
        color: ktextColor2,
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
