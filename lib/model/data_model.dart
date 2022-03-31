class DataModel{
  String name, img, description, location;
  int people, stars, price;

  DataModel({
    required this.name,
    required this.description,
    required this.img,
    required this.location,
    required this.people,
    required this.price,
    required this.stars,
  });

  factory DataModel.fromJson(Map<String, dynamic> json){
    return DataModel(
    name: json["name"],
    description: json["description"],
    img: json["img"],
    location: json["location"],
    people: json["people"],
    price: json["price"],
    stars: json["stars"]);
  }
}