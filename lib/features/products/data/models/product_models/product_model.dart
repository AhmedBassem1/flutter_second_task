import 'review_model.dart';

class ProductModel {
  final int id;
  final String title;
  final String description;
  final String category;
  final double price;
  final double rating;
  final List<ReviewModel> reviews;

  ProductModel({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.price,
    required this.rating,
    required this.reviews,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      category: json['category'],
      price: (json['price'] as num).toDouble(),
      rating: (json['rating'] as num).toDouble(),
      reviews: (json['reviews'] as List)
          .map((review) => ReviewModel.fromJson(review))
          .toList(),
    );
  }
}