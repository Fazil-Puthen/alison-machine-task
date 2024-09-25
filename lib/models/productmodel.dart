class MediaImage {
  final String image;
  final String title;
  final String? price; 

  MediaImage({
    required this.image,
    required this.title,
    this.price,
  });

  factory MediaImage.fromProductJson(Map<String, dynamic> json) {
    return MediaImage(
      image: json['image'],
      title: json['name'], 
      price: json['price'], 
    );
  }

  factory MediaImage.fromBannerJson(Map<String, dynamic> json) {
    return MediaImage(
      image: json['image'],
      title: json['title'], 
      price: null, 
    );
  }
}
