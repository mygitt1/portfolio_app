// To parse this JSON data, do
//
//     final model = modelFromJson(jsonString);

import 'dart:convert';

Model modelFromJson(String str) => Model.fromJson(json.decode(str));

String modelToJson(Model data) => json.encode(data.toJson());

class Model {
  Model({
    this.basics,
    this.work,
    this.skills,
    this.interests,
    this.education,
    this.languages,
  });

  Basics basics;
  List<Work> work;
  List<Skill> skills;
  List<Interest> interests;
  List<Education> education;
  List<Language> languages;

  factory Model.fromJson(Map<String, dynamic> json) => Model(
        basics: Basics.fromJson(json["basics"]),
        work: List<Work>.from(json["work"].map((x) => Work.fromJson(x))),
        skills: List<Skill>.from(json["skills"].map((x) => Skill.fromJson(x))),
        interests: List<Interest>.from(
            json["interests"].map((x) => Interest.fromJson(x))),
        education: List<Education>.from(
            json["education"].map((x) => Education.fromJson(x))),
        languages: List<Language>.from(
            json["languages"].map((x) => Language.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "basics": basics.toJson(),
        "work": List<dynamic>.from(work.map((x) => x.toJson())),
        "skills": List<dynamic>.from(skills.map((x) => x.toJson())),
        "interests": List<dynamic>.from(interests.map((x) => x.toJson())),
        "education": List<dynamic>.from(education.map((x) => x.toJson())),
        "languages": List<dynamic>.from(languages.map((x) => x.toJson())),
      };
}

class Basics {
  Basics({
    this.name,
    this.label,
    this.picture,
    this.email,
    this.phone,
    this.website,
    this.summary,
    this.location,
    this.profiles,
  });

  String name;
  String label;
  String picture;
  String email;
  String phone;
  String website;
  String summary;
  Location location;
  List<Profile> profiles;

  factory Basics.fromJson(Map<String, dynamic> json) => Basics(
        name: json["name"],
        label: json["label"],
        picture: json["picture"],
        email: json["email"],
        phone: json["phone"],
        website: json["website"],
        summary: json["summary"],
        location: Location.fromJson(json["location"]),
        profiles: List<Profile>.from(
            json["profiles"].map((x) => Profile.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "label": label,
        "picture": picture,
        "email": email,
        "phone": phone,
        "website": website,
        "summary": summary,
        "location": location.toJson(),
        "profiles": List<dynamic>.from(profiles.map((x) => x.toJson())),
      };
}

class Location {
  Location({
    this.address,
    this.postalCode,
    this.city,
    this.countryCode,
    this.region,
  });

  String address;
  String postalCode;
  String city;
  String countryCode;
  String region;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        address: json["address"],
        postalCode: json["postalCode"],
        city: json["city"],
        countryCode: json["countryCode"],
        region: json["region"],
      );

  Map<String, dynamic> toJson() => {
        "address": address,
        "postalCode": postalCode,
        "city": city,
        "countryCode": countryCode,
        "region": region,
      };
}

class Profile {
  Profile({
    this.network,
    this.username,
    this.url,
  });

  String network;
  String username;
  String url;

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        network: json["network"],
        username: json["username"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "network": network,
        "username": username,
        "url": url,
      };
}

class Education {
  Education({
    this.institution,
    this.area,
    this.studyType,
    this.startDate,
    this.endDate,
  });

  String institution;
  String area;
  String studyType;
  DateTime startDate;
  DateTime endDate;

  factory Education.fromJson(Map<String, dynamic> json) => Education(
        institution: json["institution"],
        area: json["area"],
        studyType: json["studyType"],
        startDate: DateTime.parse(json["startDate"]),
        endDate: DateTime.parse(json["endDate"]),
      );

  Map<String, dynamic> toJson() => {
        "institution": institution,
        "area": area,
        "studyType": studyType,
        "startDate":
            "${startDate.year.toString().padLeft(4, '0')}-${startDate.month.toString().padLeft(2, '0')}-${startDate.day.toString().padLeft(2, '0')}",
        "endDate":
            "${endDate.year.toString().padLeft(4, '0')}-${endDate.month.toString().padLeft(2, '0')}-${endDate.day.toString().padLeft(2, '0')}",
      };
}

class Interest {
  Interest({
    this.name,
  });

  String name;

  factory Interest.fromJson(Map<String, dynamic> json) => Interest(
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
      };
}

class Language {
  Language({
    this.language,
    this.fluency,
  });

  String language;
  String fluency;

  factory Language.fromJson(Map<String, dynamic> json) => Language(
        language: json["language"],
        fluency: json["fluency"],
      );

  Map<String, dynamic> toJson() => {
        "language": language,
        "fluency": fluency,
      };
}

class Skill {
  Skill({
    this.level,
    this.keywords,
    this.name,
  });

  String level;
  List<String> keywords;
  String name;

  factory Skill.fromJson(Map<String, dynamic> json) => Skill(
        level: json["level"] == null ? null : json["level"],
        keywords: List<String>.from(json["keywords"].map((x) => x)),
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "level": level == null ? null : level,
        "keywords": List<dynamic>.from(keywords.map((x) => x)),
        "name": name,
      };
}

class Work {
  Work({
    this.highlights,
    this.company,
    this.position,
    this.location,
    this.startDate,
    this.endDate,
    this.website,
  });

  List<String> highlights;
  String company;
  String position;
  String location;
  DateTime startDate;
  DateTime endDate;
  String website;

  factory Work.fromJson(Map<String, dynamic> json) => Work(
        highlights: List<String>.from(json["highlights"].map((x) => x)),
        company: json["company"],
        position: json["position"],
        location: json["location"],
        startDate: DateTime.parse(json["startDate"]),
        endDate: DateTime.parse(json["endDate"]),
        website: json["website"] == null ? null : json["website"],
      );

  Map<String, dynamic> toJson() => {
        "highlights": List<dynamic>.from(highlights.map((x) => x)),
        "company": company,
        "position": position,
        "location": location,
        "startDate":
            "${startDate.year.toString().padLeft(4, '0')}-${startDate.month.toString().padLeft(2, '0')}-${startDate.day.toString().padLeft(2, '0')}",
        "endDate":
            "${endDate.year.toString().padLeft(4, '0')}-${endDate.month.toString().padLeft(2, '0')}-${endDate.day.toString().padLeft(2, '0')}",
        "website": website == null ? null : website,
      };
}
