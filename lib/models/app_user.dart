class User {
  final String userName;
  final String userEmail;
  final String? imageUrl;
  User({
    required this.userName,
    required this.userEmail,
    this.imageUrl,
  });
}
