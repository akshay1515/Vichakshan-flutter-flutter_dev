import 'dart:convert';

import 'package:canton_design_system/canton_design_system.dart';

class News {
  String? id;
  String? tempNewsId;
  String? title;
  String? description;
  String? nViews;
  String? nComments;
  String? category;
  String? subcategory;
  String? dateTime;
  String? writtenBy;
  String? reportedBy;
  String? editorId;
  String? subeditorId;
  String? editorStatus;
  String? subeditorStatus;
  String? source;
  String? status;
  String? isDeleted;
  String? reason;
  String? rejectReason;
  String? live;
  String? type;
  String? seoTitle;
  String? seoDesc;
  String? seoTitleUrl;
  String? totalMarks;
  String? rewards;
  String? isPined;
  String? pinedCategoryIds;
  String? startTime;
  String? endTime;
  String? isNewsOpen;
  String? newsAccessBy;
  String? newSource;
  String? categoryName;

  News(
      {this.id,
      this.tempNewsId,
      this.title,
      this.description,
      this.nViews,
      this.nComments,
      this.category,
      this.subcategory,
      this.dateTime,
      this.writtenBy,
      this.reportedBy,
      this.editorId,
      this.subeditorId,
      this.editorStatus,
      this.subeditorStatus,
      this.source,
      this.status,
      this.isDeleted,
      this.reason,
      this.rejectReason,
      this.live,
      this.type,
      this.seoTitle,
      this.seoDesc,
      this.seoTitleUrl,
      this.totalMarks,
      this.rewards,
      this.isPined,
      this.pinedCategoryIds,
      this.startTime,
      this.endTime,
      this.isNewsOpen,
      this.newsAccessBy,
      this.newSource,
      this.categoryName});

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "tempNewsId": tempNewsId,
      "title": title,
      "description": description,
      "nViews": nViews,
      "nComments": nComments,
      "category": category,
      "subcategory": subcategory,
      "dateTime": dateTime,
      "writtenBy": writtenBy,
      "reportedBy": reportedBy,
      "editorId": editorId,
      "subeditorId": subeditorId,
      "editorStatus": editorStatus,
      "subeditorStatus": subeditorStatus,
      "source": source,
      "status": status,
      "isDeleted": isDeleted,
      "reason": reason,
      "rejectReason": rejectReason,
      "live": live,
      "type": type,
      "seoTitle": seoTitle,
      "seoDesc": seoDesc,
      "seoTitleUrl": seoTitleUrl,
      "totalMarks": totalMarks,
      "rewards": rewards,
      "isPined": isPined,
      "pinedCategoryIds": pinedCategoryIds,
      "startTime": startTime,
      "endTime": endTime,
      "isNewsOpen": isNewsOpen,
      "newsAccessBy": newsAccessBy,
      "newSource": newSource,
      "categoryName": categoryName,
    };
  }

  factory News.fromMap(Map<String, dynamic> map) {
    // debugPrint("parshu data " + map.toString());
    return News(
      id: map['id'],
      tempNewsId: map['tempNewsId'] as String?,
      title: map['title'] as String?,
      description: map['description'] as String?,
      nViews: map['nViews'] as String?,
      nComments: map['nComments'] as String?,
      category: map['category'] as String?,
      subcategory: map['subcategory'] as String?,
      dateTime: map['dateTime'] as String?,
      writtenBy: map['writtenBy'] as String?,
      reportedBy: map['reportedBy'] as String?,
      editorId: map['editorId'] as String?,
      subeditorId: map['subeditorId'] as String?,
      editorStatus: map['editorStatus'] as String?,
      subeditorStatus: map['subeditorStatus'] as String?,
      source: map['source'] as String?,
      status: map['status'] as String?,
      isDeleted: map['isDeleted'] as String?,
      reason: map['reason'] as String?,
      rejectReason: map['rejectReason'] as String?,
      live: map['live'] as String?,
      type: map['type'] as String?,
      seoTitle: map['seoTitle'] as String?,
      seoDesc: map['seoDesc'] as String?,
      seoTitleUrl: map['seoTitleUrl'] as String?,
      totalMarks: map['totalMarks'] as String?,
      rewards: map['rewards'] as String?,
      isPined: map['isPined'] as String,
      pinedCategoryIds: map['pinedCategoryIds'] as String?,
      startTime: map['startTime'] as String?,
      endTime: map['endTime'] as String?,
      isNewsOpen: map['isNewsOpen'] as String?,
      newsAccessBy: map['newsAccessBy'] as String?,
      newSource: map['newSource'] as String?,
      categoryName: map['categoryName'] as String?,
    );
  }

  String toJson() => json.encode(toMap());

  factory News.fromJson(String name) => News.fromMap(json.decode(name));
}

class NewsMedia {
  String? url;
  String? mediaType;
}

class Advertisement {
  String? id;
  String? title;
  String? description;
  String? image;
  String? date;
  String? status;
  String? isDeleted;
}

class Subcategories {
  String? id;
  String? name;
  String? category;
  String? isDeleted;
}

class NewsRepo {
  bool? ack;
  String? message;
  List<News>? news;
  List<Advertisement>? advertisements;
  String? notificationCnt;
}
