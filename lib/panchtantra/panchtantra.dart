// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<Welcome1> welcome1FromJson(String str) =>
    List<Welcome1>.from(json.decode(str).map((x) => Welcome1.fromJson(x)));

String welcome1ToJson(List<Welcome1> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Welcome1 {
  Welcome1({
    this.id,
    this.title,
    this.story,
  });

  String id;
  String title;
  String story;

  factory Welcome1.fromJson(Map<String, dynamic> json) => Welcome1(
        id: json["ID "],
        title: json["TITLE"],
        story: json["STORY"],
      );

  Map<String, dynamic> toJson() => {
        "ID ": id,
        "TITLE": title,
        "STORY": story,
      };
}

/////////////************************************************************** *////////////////////

//Start of akbar-birbal stories//

List<Welcome2> welcome2FromJson(String str) =>
    List<Welcome2>.from(json.decode(str).map((x) => Welcome2.fromJson(x)));

String welcome2ToJson(List<Welcome2> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Welcome2 {
  Welcome2({
    this.id,
    this.title,
    this.story,
    this.moral,
  });

  String id;
  String title;
  String story;
  String moral;

  factory Welcome2.fromJson(Map<String, dynamic> json) => Welcome2(
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

// end of the Akbar- Birbal stories //

/////////*********************************************************** *////////////////////////////
