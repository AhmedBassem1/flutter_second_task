import 'package:flutter_second_task/features/products/data/models/product_models/product_model.dart';

enum ProductStatus { initial, loading, failure, success }

extension ProductStateX on ProductState {
  bool get isInitial => status == ProductStatus.initial;
  bool get isLoading => status == ProductStatus.loading;
  bool get isFailure => status == ProductStatus.failure;
  bool get isSuccess => status == ProductStatus.success;
}

class ProductState {
  final ProductStatus status;
  final List<ProductModel> products;
  final String errorMessage;

  ProductState({
    required this.status,
    this.products = const [],
    this.errorMessage = '',
  });

  ProductState copyWith({
    ProductStatus? status,
    List<ProductModel>? products,
    String? errorMessage,
  }) {
    return ProductState(
      errorMessage: errorMessage ?? this.errorMessage,
      status: status ?? this.status,
      products: products ?? this.products,
    );
  }
}
