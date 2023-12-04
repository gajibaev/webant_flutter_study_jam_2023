class News {
  final int id;
  final String title;
  final String description;
  final String? imageUrl;
  final String? sourceUrl;

  News({
    required this.id,
    required this.title,
    required this.description,
    this.imageUrl,
    this.sourceUrl,
  });
}
