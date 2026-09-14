class Product {
  int id;
  String name;
  int quatity;
  double price;
  String? image;
  String? description;

  Product({
    required this.id,
    required this.name,
    required this.quatity,
    required this.price,
    this.image,
    this.description,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      quatity: json['quatity'],
      price: json['price'].toDouble(),
      image: json['image'],
      description: json['description'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'quatity': quatity,
      'price': price,
      'image': image,
      'description': description,
    };
  }

  Product copyTo({
    int? id,
    String? name,
    int? quatity,
    double? price,
    String? image,
    String? description,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      quatity: quatity ?? this.quatity,
      price: price ?? this.price,
      image: image ?? this.image,
      description: description ?? this.description,
    );
  }
}