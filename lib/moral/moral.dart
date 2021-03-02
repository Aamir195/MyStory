import 'dart:convert';
//     final welcome = welcomeFromJson(jsonString);

/// START - - MORAL STORIES /////

List<Welcome> welcomeFromJson(String str) =>
    List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));

String welcomeToJson(List<Welcome> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Welcome {
  Welcome({
    this.id,
    this.title,
    this.story,
    this.moral,
  });

  int id;
  String title;
  String story;
  String moral;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        id: json["ID"],
        title: json["TITLE"],
        story: json["STORY"],
        moral: json["MORAL"],
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "TITLE": title,
        "STORY": story,
        "MORAL": moral,
      };
}

/// END - MORAL STORIES /////

//// START - TENALI -RAM///

List<Welcome3> welcome3FromJson(String str) =>
    List<Welcome3>.from(json.decode(str).map((y) => Welcome3.fromJson(y)));

String welcome3ToJson(List<Welcome3> data) =>
    json.encode(List<dynamic>.from(data.map((y) => y.toJson())));

class Welcome3 {
  Welcome3({
    this.id,
    this.title,
    this.story,
    this.moral,
  });

  int id;
  String title;
  String story;
  String moral;

  factory Welcome3.fromJson(Map<String, dynamic> json) => Welcome3(
        id: json["id"],
        title: json["title"],
        story: json["story"],
        moral: json["moral"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "story": story,
        "moral": moral,
      };
}

/// END - TENALI - RAM
