class ArticlesModel {
  final String? imageUrl;
  final String title;
  final String? description;
  final String? webUrl;

  ArticlesModel(
      {required this.webUrl,
      required this.imageUrl,
      required this.title,
      required this.description});

  factory ArticlesModel.fromJson(json) {
    return ArticlesModel(
      webUrl: json['url'],
      imageUrl: json['urlToImage'],
      title: json['title'],
      description: json['description'],
    );
  }
}
