class News {
  final String title;
  final String description;
  final String? imageUrl;
  final String? sourceUrl;

  News({
    required this.title,
    required this.description,
    this.imageUrl,
    this.sourceUrl,
  });
}
