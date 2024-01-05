
class DataModel{
  // create variables
  int? id;
  String? title;
  String? description;
  String? category;
  double? price;
  String? image;

  //create constructor
DataModel({
this.id,
  this.title,
  this.image,
  this.category,
  this.description,
  this.price
});
//create formJson
  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
    id: json["id"],
    title: json["title"],
    price: json["price"]?.toDouble(),
    description: json["description"],
    category: json["category"],
    image: json["image"],
  );

  set value(DataModel value) {}

  //cteate Tojson method
  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "price": price,
    "description": description,
    "category": category,
    "image": image,
  };


}