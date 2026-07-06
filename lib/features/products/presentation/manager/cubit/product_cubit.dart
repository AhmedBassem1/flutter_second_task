

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repo/Product_repo.dart';
import 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit(this.productRepo) : super(ProductInitialState());

  final ProductsRepo productRepo;

  Future<void> getProducts() async {
    emit(ProductLoadingState());
    final result = await productRepo.getProducts();
    result.fold(
      (failure) => emit(ProductFailureState(failure.errMessage)),
      (products) => emit(ProductSuccessState(products)),
    );
  }
}
