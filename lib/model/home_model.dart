// To parse this JSON data, do
//
//     final homeModel = homeModelFromJson(jsonString);

import 'dart:convert';

HomeModel homeModelFromJson(String str) => HomeModel.fromJson(json.decode(str));

String homeModelToJson(HomeModel data) => json.encode(data.toJson());

class HomeModel {
  HomeModel({
    required this.message,
    required this.data,
  });

  String message;
  List<Datum> data;

  factory HomeModel.fromJson(Map<String, dynamic> json) => HomeModel(
    message: json["message"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  Datum({
    required this.title,
    required this.food,
  });

  String title;
  List<Food> food;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    title: json["title"],
    food: List<Food>.from(json["food"].map((x) => Food.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "food": List<dynamic>.from(food.map((x) => x.toJson())),
  };
}

class Food {
  Food({
    required this.picture,
    required this.name,
    required this.price,
  });

  String picture;
  String name;
  double price;

  factory Food.fromJson(Map<String, dynamic> json) => Food(
    picture: json["picture"],
    name: json["name"],
    price: json["price"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "picture": picture,
    "name": name,
    "price": price,
  };
}
