class Article {
  final int id;
  final String title;
  final String content;
  final String author;
  final DateTime publishedDate;
  final String image; // URL or local path to the image
  final List<String>? tags;
  final List<Comment>? comments; // List of comments

  // Constructor
  Article({
    required this.id,
    required this.title,
    required this.content,
    required this.author,
    required this.publishedDate,
    required this.image,
    this.tags,
    this.comments,
  });

  // Factory constructor for creating an instance from JSON
  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      id: json['id'],
      title: json['title'],
      content: json['content'],
      author: json['author'],
      publishedDate: DateTime.parse(json['publishedDate']),
      image: json['image'],
      tags: (json['tags'] as List<dynamic>?)?.map((tag) => tag as String).toList(),
      comments: (json['comments'] as List<dynamic>?)
          ?.map((comment) => Comment.fromJson(comment))
          .toList(),
    );
  }

  // Method to convert an Article instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'author': author,
      'publishedDate': publishedDate.toIso8601String(),
      'image': image,
      'tags': tags,
      'comments': comments?.map((comment) => comment.toJson()).toList(),
    };
  }
}

class Comment {
  final int id;
  final String commenterName;
  final String message;
  final DateTime datePosted;

  // Constructor
  Comment({
    required this.id,
    required this.commenterName,
    required this.message,
    required this.datePosted,
  });

  // Factory constructor for creating an instance from JSON
  factory Comment.fromJson(Map<String, dynamic> json) {
    return Comment(
      id: json['id'],
      commenterName: json['commenterName'],
      message: json['message'],
      datePosted: DateTime.parse(json['datePosted']),
    );
  }

  // Method to convert a Comment instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'commenterName': commenterName,
      'message': message,
      'datePosted': datePosted.toIso8601String(),
    };
  }
}
