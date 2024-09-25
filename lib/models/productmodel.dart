class Product {
  final int productId;
  final String slug;
  final String name;
  final String price;
  final String image;

  Product({
    required this.productId,
    required this.slug,
    required this.name,
    required this.price,
    required this.image,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      productId: json['productId'],
      slug: json['slug'],
      name: json['name'],
      price: json['price'],
      image: json['image'],
    );
  }
}