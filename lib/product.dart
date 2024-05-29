class Product {
  final String? id;
  final String? name;
  final String? description;
  final double? price;
  final String? imageUrl;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['_id'] ?? '',
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      price: (json['price'] != null) ? json['price'].toDouble() : 0.0,
      imageUrl: json['image'] ?? '',
    );
  }
}