class ProductsModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final RatingModel rating;

  ProductsModel({
    required this.id,
    required this.price,
    required this.description,
    required this.image,
    required this.title,
    required this.category,
    required this.rating,
  });
  //this factory constructor for internet
  factory ProductsModel.fromJson(jsonData) {
    return ProductsModel(
        id: jsonData['id'],
        price: jsonData['price'],
        description: jsonData['description'],
        image: jsonData['image'],
        title: jsonData['title'],
        category: jsonData['category'],
        rating: RatingModel.fromJson(
          jsonData['rating'],
        ));
  }
}

class RatingModel {
  final double rate;
  final int count;
  RatingModel({
    required this.rate,
    required this.count,
  });

  //factory model for internet
  factory RatingModel.fromJson(jsonData) {
    return RatingModel(
      rate: jsonData['rate'],
      count: jsonData['count'],
    );
  }
}
