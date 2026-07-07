import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_second_task/features/products/data/models/product_models/product_model.dart';

import '../../../data/repo/Product_repo.dart';
import 'product_state.dart';

class ProductController extends Cubit<ProductState> {
  ProductController(this.productRepo)
    : super(ProductState(status: ProductStatus.initial));

  final ProductsRepo productRepo;

  Future<void> getProducts() async {
    emit(state.copyWith(status: ProductStatus.loading));
    final result = await productRepo.getProducts();
    result.fold(
      (failure) => emit(
        state.copyWith(
          status: ProductStatus.failure,
          errorMessage: failure.errMessage,
        ),
      ),
      (products) => emit(
        state.copyWith(status: ProductStatus.success, products: products),
      ),
    );
  }


  Future<void> toggleFavorite(ProductModel product) async {
  final newFavoriteStatus  = await productRepo.toggleFavorite(product.id);

  product.isFavorite = newFavoriteStatus ;

  emit(state.copyWith(
    products: List<ProductModel>.from(state.products),
  ));
}
}
