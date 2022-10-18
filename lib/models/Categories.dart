// ignore: file_names

// ignore_for_file: file_names, duplicate_ignore

import 'dart:convert';
import 'dart:ffi';

import 'package:canton_design_system/canton_design_system.dart';
import 'package:vichakshan_news_flutter/models/categories.dart';

class SubCategories {
  dynamic id;
  dynamic name;
  dynamic category;
  dynamic isDeleted;

  SubCategories({this.id, this.category, this.name, this.isDeleted});

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "category": category,
      "isDeleted": isDeleted,
    };
  }

  factory SubCategories.fromMap(Map<String, dynamic> map) {
    debugPrint("parshu data " + map.toString());
    return SubCategories(
      id: map['id'] as dynamic,
      category: map['category'] as dynamic,
      name: map['name'] as dynamic,
      isDeleted: map['isDeleted'] as dynamic,
    );
  }

  String toJson() => json.encode(toMap());

  factory SubCategories.fromJson(String name) =>
      SubCategories.fromMap(json.decode(name));
}

class Categories {
  dynamic id;
  dynamic category;
  dynamic type;
  dynamic isDeleted;
  dynamic isMandatory;
  dynamic webUrl;
  dynamic isSelected;
  dynamic subCategories;

  Categories(
      {this.id,
      this.category,
      this.type,
      this.isDeleted,
      this.isMandatory,
      this.webUrl,
      this.isSelected,
      this.subCategories});

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "category": category,
      "type": type,
      "isDeleted": isDeleted,
      "isMandatory": isMandatory,
      "webUrl": webUrl,
      "isSelected": isSelected,
      "subCategories":
          subCategories.map((e) => e.toMap()).toList(growable: false),
    };
  }

  factory Categories.fromMap(Map<String, dynamic> map) {
    // debugPrint("parshu data " + map.toString());

    final results = List<Map<String, dynamic>>.from(
      map['subCategories'],
    );

    final List<SubCategories> subCat = results
        .map((articleData) => SubCategories.fromMap(articleData))
        .toList(growable: false);
    return Categories(
      id: map['id'] as dynamic,
      category: map['category'] as String,
      type: map['type'] as String,
      isDeleted: map['isDeleted'] as String,
      isMandatory: map['isMandatory'] as String,
      webUrl: map['webUrl'] as String,
      isSelected: map['isSelected'] as dynamic,
      subCategories: subCat,
    );
  }

  String toJson() => json.encode(toMap());

  factory Categories.fromJson(String name) =>
      Categories.fromMap(json.decode(name));
}

class CategoriesResponse {
  bool ack;
  int followCnt;
  String message;
  int appVersion;
  bool podcastEnable;
  bool videoEnable;
  List categories;

  CategoriesResponse(
      {required this.ack,
      required this.followCnt,
      required this.message,
      required this.appVersion,
      required this.podcastEnable,
      required this.videoEnable,
      required this.categories});

  Map<String, dynamic> toMap() {
    // debugPrint("parshu data " + message);
    return {
      "ack": ack,
      "followCnt": followCnt,
      "message": message,
      "appVersion": appVersion,
      "podcastEnable": podcastEnable,
      "videoEnable": videoEnable,
      "categories": categories.map((e) => e.toMap()).toList(growable: false),
    };
  }

  factory CategoriesResponse.fromMap(Map<String, dynamic> map) {
    final results = List<Map<String, dynamic>>.from(
      map['categories'],
    );

    final List<Categories> cat = results
        .map((articleData) => Categories.fromMap(articleData))
        .toList(growable: false);
    return CategoriesResponse(
      ack: map['ack'] as bool,
      followCnt: map['followCnt'] as int,
      message: map['message'] as String,
      appVersion: map['appVersion'] as int,
      podcastEnable: map['podcastEnable'] as bool,
      videoEnable: map['videoEnable'] as bool,
      categories: cat,
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoriesResponse.fromJson(String name) =>
      CategoriesResponse.fromMap(json.decode(name));
}
