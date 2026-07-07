import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_second_task/core/error/failure.dart';
import 'package:flutter_second_task/core/utils/api_service.dart';
import 'package:flutter_second_task/features/products/data/data_sources/local/favorite_local_data_source.dart';
import 'package:flutter_second_task/features/products/data/models/product_models/product_model.dart';

import 'Product_repo.dart';

class ProductRepoImpl implements ProductsRepo {
  final ApiService apiService;
  final FavoriteLocalDataSource localDataSource;

  ProductRepoImpl(this.apiService, this.localDataSource);

  @override
  Future<Either<Failure, List<ProductModel>>> getProducts() async {
    try {
      final response = await apiService.get(endPoint: 'products');

      final products = (response['products'] as List)
          .map((e) => ProductModel.fromJson(e))
          .toList();
      for (final product in products) {
        product.isFavorite = localDataSource.isFavorite(product.id);
      }
      return Right(products);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      }
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<bool> toggleFavorite(int id) {
    return localDataSource.toggleFavorite(id);
  }
}
