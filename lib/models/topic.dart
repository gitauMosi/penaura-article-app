class Topic {
  final String title;
  final String image; // URL or path to the topic image
  final int articles; // Number of articles in the topic

  // Constructor
  Topic({
    required this.title,
    required this.image,
    required this.articles,
  });

  // Factory constructor for creating an instance from JSON
  factory Topic.fromJson(Map<String, dynamic> json) {
    return Topic(
      title: json['title'],
      image: json['image'],
      articles: json['articles'],
    );
  }

  // Method to convert a Topic instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'image': image,
      'articles': articles,
    };
  }
}
