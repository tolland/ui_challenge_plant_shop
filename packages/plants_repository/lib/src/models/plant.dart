import 'package:equatable/equatable.dart';

class Plant extends Equatable {
  final String name;
  final String description;
  final String imageUrl;
  final int price;
  final String subtitle;

  const Plant({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
    this.subtitle = '',
  });

  Plant copyWith({
    String? name,
    String? description,
    String? imageUrl,
    int? price,
    String? subtitle,
  }) {
    return Plant(
      name: name ?? this.name,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      price: price ?? this.price,
      subtitle: subtitle ?? this.subtitle,
    );
  }

  factory Plant.fromMap(Map<String, dynamic> map) {
    return Plant(
      name: map['name'] as String,
      description: map['description'] as String,
      imageUrl: map['imageUrl'] as String,
      price: map['price'] as int,
      subtitle: map['subtitle'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'imageUrl': imageUrl,
      'price': price,
      'subtitle': subtitle,
    };
  }

  @override
  List<Object?> get props => [
        name,
        description,
        imageUrl,
        price,
        subtitle,
      ];
}
