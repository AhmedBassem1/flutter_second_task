import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_second_task/features/products/data/models/product_models/product_model.dart';
import 'package:flutter_second_task/features/products/presentation/controllers/product_controller/product_controller.dart';
import 'package:flutter_second_task/features/products/presentation/controllers/product_controller/product_state.dart';

class ProductDetailsFav extends StatelessWidget {
  const ProductDetailsFav({super.key});

  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)!.settings.arguments as ProductModel;
    return BlocBuilder<ProductController, ProductState>(
      builder: (BuildContext context, state) {
        return GestureDetector(
        onTap: () {
          context.read<ProductController>().toggleFavorite(product);
        },
        child: Container(
          width: 30,
          height: 30,
          decoration: const BoxDecoration(
            color: Color(0xffF6F6F6),
            shape: BoxShape.circle,
            border: Border.fromBorderSide(BorderSide(color: Color(0xffDFDFDF))),
          ),
          child: Icon(
            product.isFavorite ? Icons.favorite : Icons.favorite_border,
            color: product.isFavorite ? Colors.red : const Color(0xff2D2D2D),
          ),
        ),
      );
      },
    );
  }
}
