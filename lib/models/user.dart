class UserProfile {
  final String username;
  final String name;
  final String description;
  final int articlesCount;
  final int followingsCount;
  final int followersCount;
  final List<String> socialMedia;

  UserProfile({
    required this.username,
    required this.name,
    required this.description,
    required this.articlesCount,
    required this.followingsCount,
    required this.followersCount,
    required this.socialMedia,
  });

  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      username: json['username'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      articlesCount: json['articlesCount'] as int,
      followingsCount: json['followingsCount'] as int,
      followersCount: json['followersCount'] as int,
      socialMedia: List<String>.from(json['socialMedia'] as List),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'name': name,
      'description': description,
      'articlesCount': articlesCount,
      'followingsCount': followingsCount,
      'followersCount': followersCount,
      'socialMedia': socialMedia,
    };
  }
}