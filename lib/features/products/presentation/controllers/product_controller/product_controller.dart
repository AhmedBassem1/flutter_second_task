import 'package:flutter_bloc/flutter_bloc.dart';

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
}
