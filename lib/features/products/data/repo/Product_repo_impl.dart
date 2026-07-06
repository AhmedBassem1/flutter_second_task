import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_second_task/core/error/failure.dart';
import 'package:flutter_second_task/core/utils/api_service.dart';

import '../models/product_models/product_model/product.dart';
import 'Product_repo.dart';

class ProductRepoImpl implements ProductsRepo {
  final ApiService apiService;
  ProductRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<Product>>> getProducts() async {
    try {
      final response = await apiService.get(endPoint: 'products');

    final products = (response['products'] as List)
        .map((e) => Product.fromJson(e))
        .toList();
      return Right(products);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }
  
  @override
  Future<void> addToFavorites() {
    // TODO: implement addToFavorites
    throw UnimplementedError();
  }
  
  @override
  Future<bool> isFavorite(int id) {
    // TODO: implement isFavorite
    throw UnimplementedError();
  }
  
  @override
  Future<void> removeFromFavorites(int id) {
    // TODO: implement removeFromFavorites
    throw UnimplementedError();
  }
}