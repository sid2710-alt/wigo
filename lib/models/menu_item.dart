class MenuItem {
  String id;
  String name;
  String description;
  double price;
  String imageUrl;
  bool isAvailable;
  List<String> categories;
  int preparationTime; // in minutes
  List<String> ingredients;
  double rating; // average rating
  int ratingCount; // number of ratings

  MenuItem({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.isAvailable,
    required this.categories,
    required this.preparationTime,
    required this.ingredients,
    required this.rating,
    required this.ratingCount,
  });

  // Method to convert MenuItem object to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
      'isAvailable': isAvailable,
      'categories': categories,
      'preparationTime': preparationTime,
      'ingredients': ingredients,
      'rating': rating,
      'ratingCount': ratingCount,
    };
  }

  // Method to create MenuItem object from JSON
  factory MenuItem.fromJson(Map<String, dynamic> json) {
    return MenuItem(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'],
      imageUrl: json['imageUrl'],
      isAvailable: json['isAvailable'],
      categories: List<String>.from(json['categories']),
      preparationTime: json['preparationTime'],
      ingredients: List<String>.from(json['ingredients']),
      rating: json['rating'],
      ratingCount: json['ratingCount'],
    );
  }
}
