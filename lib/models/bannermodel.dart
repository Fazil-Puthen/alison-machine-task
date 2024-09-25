class Banner {
  final int id;
  final String linkType;
  final String linkValue;
  final String image;
  final String title;
  final String subTitle;

  Banner({
    required this.id,
    required this.linkType,
    required this.linkValue,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  factory Banner.fromJson(Map<String, dynamic> json) {
    return Banner(
      id: json['id'],
      linkType: json['link_type'].toString(),
      linkValue: json['link_value'],
      image: json['image'],
      title: json['title'],
      subTitle: json['sub_title'],
    );
  }
}
