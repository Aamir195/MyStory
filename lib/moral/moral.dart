import 'dart:convert';
//     final welcome = welcomeFromJson(jsonString);
List<Welcome> welcomeFromJson(String str) => List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));

String welcomeToJson(List<Welcome> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

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