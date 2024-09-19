class Product {
  final int id;
  final String name;
  final String? description;
  final String stockStatus;
  final String price;
  final String thumb;
  final bool special;
  final int rating;

  Product({
    required this.id,
    required this.name,
    this.description,
    required this.stockStatus,
    required this.price,
    required this.thumb,
    required this.special,
    required this.rating,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: int.parse(json['id']),
      name: json['name'],
      description: json['description'],
      stockStatus: json['stock_status'],
      price: json['price'],
      thumb: json['thumb'],
      special: json['special'],
      rating: json['rating'],
    );
  }
}
