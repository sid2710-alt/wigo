import 'package:wigo/models/menu_item.dart';

class Restaurant {
  String id;
  String name;
  String description;
  String address;
  String phoneNumber;
  String email;
  String imageUrl;
  List<String> categories;
  double rating; // average rating
  int ratingCount; // number of ratings
  String openingHours; // e.g., "9:00 AM - 10:00 PM"
  bool isOpen;
  String deliveryArea; // description of delivery area
  List<MenuItem> menu; // list of menu items
  DateTime createdAt; // when the restaurant was added
  DateTime updatedAt; // last update timestamp

  Restaurant({
    required this.id,
    required this.name,
    required this.description,
    required this.address,
    required this.phoneNumber,
    required this.email,
    required this.imageUrl,
    required this.categories,
    required this.rating,
    required this.ratingCount,
    required this.openingHours,
    required this.isOpen,
    required this.deliveryArea,
    required this.menu,
    required this.createdAt,
    required this.updatedAt,
  });

  // Method to convert Restaurant object to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'address': address,
      'phoneNumber': phoneNumber,
      'email': email,
      'imageUrl': imageUrl,
      'categories': categories,
      'rating': rating,
      'ratingCount': ratingCount,
      'openingHours': openingHours,
      'isOpen': isOpen,
      'deliveryArea': deliveryArea,
      'menu': menu.map((item) => item.toJson()).toList(),
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  // Method to create Restaurant object from JSON
  factory Restaurant.fromJson(Map<String, dynamic> json) {
    return Restaurant(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      address: json['address'],
      phoneNumber: json['phoneNumber'],
      email: json['email'],
      imageUrl: json['imageUrl'],
      categories: List<String>.from(json['categories']),
      rating: json['rating'],
      ratingCount: json['ratingCount'],
      openingHours: json['openingHours'],
      isOpen: json['isOpen'],
      deliveryArea: json['deliveryArea'],
      menu: List<MenuItem>.from(
          json['menu'].map((item) => MenuItem.fromJson(item))),
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }
}
