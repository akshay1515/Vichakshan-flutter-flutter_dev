import 'dart:convert';
import 'dart:io';

import 'package:canton_design_system/canton_design_system.dart';
import 'package:dio/dio.dart';
import 'package:vichakshan_news_flutter/models/CommonResult.dart';

import '../config/news_exceptions.dart';
import '../models/Categories.dart';
import '../models/News.dart';

class NewsAPIServices {
  NewsAPIServices(this._dio);
  final Dio _dio;
//******************************************Get News by CAtegory Id************************************************//
  Future<List<News>> getNewsCategoryById(
      {required String path, required params}) async {
    try {
      final response = await _dio.post(path,
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application.dart/json",
          }),
          data: jsonEncode(params));

      final results = List<Map<String, dynamic>>.from(
        response.data['news'],
      );

      // debugPrint("parshu " + results.toString());

      final List<News> newsResult = results
          .map((articleData) => News.fromMap(articleData))
          .toList(growable: false);

      return newsResult;
    } on DioError catch (e) {
      debugPrint("parshu error " + e.message.toString());
      throw NewsExceptions.fromDioError(e);
    }
  }

  //******************************************Get All Categories************************************************//
  Future<CategoriesResponse> getAllCategories(
      {required String path, required params}) async {
    try {
      final response = await _dio.post(path,
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application.dart/json",
          }),
          data: jsonEncode(params));
      // debugPrint("parshu all "+response.toString());
      final results = Map<String, dynamic>.from(
        response.data,
      );

      // debugPrint("parshu results" + results.toString());

      final CategoriesResponse newsResult = CategoriesResponse.fromMap(results);

      return newsResult;
    } on DioError catch (e) {
      // debugPrint("parshu error " + e.message.toString());
      throw NewsExceptions.fromDioError(e);
    }
  }

//******************************************Get User Id************************************************//
  Future<List<News>> getUserId({required String path, required params}) async {
    try {
      final response = await _dio.post(path,
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application.dart/json",
          }),
          data: jsonEncode(params));

      final results = List<Map<String, dynamic>>.from(
        response.data['news'],
      );

      // debugPrint("parshu " + results.toString());

      final List<News> newsResult = results
          .map((articleData) => News.fromMap(articleData))
          .toList(growable: false);

      return newsResult;
    } on DioError catch (e) {
      // debugPrint("parshu error " + e.message.toString());
      throw NewsExceptions.fromDioError(e);
    }
  }

//******************************************Add Remove Interest************************************************//
  Future<List<News>> addRemoveInterest(
      {required String path, required params}) async {
    try {
      final response = await _dio.post(path,
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application.dart/json",
          }),
          data: jsonEncode(params));

      final results = List<Map<String, dynamic>>.from(
        response.data['news'],
      );

      // debugPrint("parshu " + results.toString());

      final List<News> newsResult = results
          .map((articleData) => News.fromMap(articleData))
          .toList(growable: false);

      return newsResult;
    } on DioError catch (e) {
      // debugPrint("parshu error " + e.message.toString());
      throw NewsExceptions.fromDioError(e);
    }
  }

  //******************************************Add Pinned News View Status***********************************************//
  Future<List<News>> addPinedNewsViewStatus(
      {required String path, required params}) async {
    try {
      final response = await _dio.post(path,
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application.dart/json",
          }),
          data: jsonEncode(params));

      final results = List<Map<String, dynamic>>.from(
        response.data['news'],
      );

      // debugPrint("parshu " + results.toString());

      final List<News> newsResult = results
          .map((articleData) => News.fromMap(articleData))
          .toList(growable: false);

      return newsResult;
    } on DioError catch (e) {
      // debugPrint("parshu error " + e.message.toString());
      throw NewsExceptions.fromDioError(e);
    }
  }

  //******************************************Add Remove Bookmark************************************************//
  Future<List<News>> addRemoveBookmark(
      {required String path, required params}) async {
    try {
      final response = await _dio.post(path,
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application.dart/json",
          }),
          data: jsonEncode(params));

      final results = List<Map<String, dynamic>>.from(
        response.data['news'],
      );

      // debugPrint("parshu " + results.toString());

      final List<News> newsResult = results
          .map((articleData) => News.fromMap(articleData))
          .toList(growable: false);

      return newsResult;
    } on DioError catch (e) {
      // debugPrint("parshu error " + e.message.toString());
      throw NewsExceptions.fromDioError(e);
    }
  }

  //******************************************Update View Count************************************************//
  Future<List<News>> updateViewCount(
      {required String path, required params}) async {
    try {
      final response = await _dio.post(path,
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application.dart/json",
          }),
          data: jsonEncode(params));

      final results = List<Map<String, dynamic>>.from(
        response.data['news'],
      );

      // debugPrint("parshu " + results.toString());

      final List<News> newsResult = results
          .map((articleData) => News.fromMap(articleData))
          .toList(growable: false);

      return newsResult;
    } on DioError catch (e) {
      // debugPrint("parshu error " + e.message.toString());
      throw NewsExceptions.fromDioError(e);
    }
  }

  //******************************************Get News by Id************************************************//
  Future<List<News>> getNewsById(
      {required String path, required params}) async {
    try {
      final response = await _dio.post(path,
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application.dart/json",
          }),
          data: jsonEncode(params));

      final results = List<Map<String, dynamic>>.from(
        response.data['news'],
      );

      // debugPrint("parshu " + results.toString());

      final List<News> newsResult = results
          .map((articleData) => News.fromMap(articleData))
          .toList(growable: false);

      return newsResult;
    } on DioError catch (e) {
      // debugPrint("parshu error " + e.message.toString());
      throw NewsExceptions.fromDioError(e);
    }
  }

  //******************************************Apply Citizen Jounalism************************************************//
  Future<List<News>> applyCitizenJournalism(
      {required String path, required params}) async {
    try {
      final response = await _dio.post(path,
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application.dart/json",
          }),
          data: jsonEncode(params));

      final results = List<Map<String, dynamic>>.from(
        response.data['news'],
      );

      // debugPrint("parshu " + results.toString());

      final List<News> newsResult = results
          .map((articleData) => News.fromMap(articleData))
          .toList(growable: false);

      return newsResult;
    } on DioError catch (e) {
      // debugPrint("parshu error " + e.message.toString());
      throw NewsExceptions.fromDioError(e);
    }
  }

  //******************************************Get User Details************************************************//
  Future<List<News>> getUserDetails(
      {required String path, required params}) async {
    try {
      final response = await _dio.post(path,
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application.dart/json",
          }),
          data: jsonEncode(params));

      final results = List<Map<String, dynamic>>.from(
        response.data['news'],
      );

      // debugPrint("parshu " + results.toString());

      final List<News> newsResult = results
          .map((articleData) => News.fromMap(articleData))
          .toList(growable: false);

      return newsResult;
    } on DioError catch (e) {
      // debugPrint("parshu error " + e.message.toString());
      throw NewsExceptions.fromDioError(e);
    }
  }

  //******************************************Get Comments************************************************//
  Future<List<News>> getComments(
      {required String path, required params}) async {
    try {
      final response = await _dio.post(path,
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application.dart/json",
          }),
          data: jsonEncode(params));

      final results = List<Map<String, dynamic>>.from(
        response.data['news'],
      );

      // debugPrint("parshu " + results.toString());

      final List<News> newsResult = results
          .map((articleData) => News.fromMap(articleData))
          .toList(growable: false);

      return newsResult;
    } on DioError catch (e) {
      // debugPrint("parshu error " + e.message.toString());
      throw NewsExceptions.fromDioError(e);
    }
  }

  //******************************************Add Remove Comment************************************************//
  Future<List<News>> addRemoveComment(
      {required String path, required params}) async {
    try {
      final response = await _dio.post(path,
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application.dart/json",
          }),
          data: jsonEncode(params));

      final results = List<Map<String, dynamic>>.from(
        response.data['news'],
      );

      // debugPrint("parshu " + results.toString());

      final List<News> newsResult = results
          .map((articleData) => News.fromMap(articleData))
          .toList(growable: false);

      return newsResult;
    } on DioError catch (e) {
      // debugPrint("parshu error " + e.message.toString());
      throw NewsExceptions.fromDioError(e);
    }
  }

  //******************************************Get Bookmark News************************************************//
  Future<List<News>> getBookmarkNews(
      {required String path, required params}) async {
    try {
      final response = await _dio.post(path,
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application.dart/json",
          }),
          data: jsonEncode(params));

      final results = List<Map<String, dynamic>>.from(
        response.data['news'],
      );

      // debugPrint("parshu " + results.toString());

      final List<News> newsResult = results
          .map((articleData) => News.fromMap(articleData))
          .toList(growable: false);

      return newsResult;
    } on DioError catch (e) {
      // debugPrint("parshu error " + e.message.toString());
      throw NewsExceptions.fromDioError(e);
    }
  }

  //******************************************Submit Feedback************************************************//
  Future<List<News>> submitFeedback(
      {required String path, required params}) async {
    try {
      final response = await _dio.post(path,
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application.dart/json",
          }),
          data: jsonEncode(params));

      final results = List<Map<String, dynamic>>.from(
        response.data['news'],
      );

      // debugPrint("parshu " + results.toString());

      final List<News> newsResult = results
          .map((articleData) => News.fromMap(articleData))
          .toList(growable: false);

      return newsResult;
    } on DioError catch (e) {
      // debugPrint("parshu error " + e.message.toString());
      throw NewsExceptions.fromDioError(e);
    }
  }

  //******************************************Send OTP************************************************//
  Future<CommonResult> sendOTP({required String path, required params}) async {
    try {
      final response = await _dio.post(path,
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application.dart/json",
          }),
          data: jsonEncode(params));

      final results = Map<String, dynamic>.from(
        response.data['result'],
      );

      // debugPrint("parshu " + results.toString());

      final CommonResult commonResult = CommonResult.fromMap(results);

      return commonResult;
    } on DioError catch (e) {
      // debugPrint("parshu error " + e.message.toString());
      throw NewsExceptions.fromDioError(e);
    }
  }

  //******************************************Sign In With Google************************************************//
  Future<List<News>> signInWithGoogle(
      {required String path, required params}) async {
    try {
      final response = await _dio.post(path,
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application.dart/json",
          }),
          data: jsonEncode(params));

      final results = List<Map<String, dynamic>>.from(
        response.data['news'],
      );

      // debugPrint("parshu " + results.toString());

      final List<News> newsResult = results
          .map((articleData) => News.fromMap(articleData))
          .toList(growable: false);

      return newsResult;
    } on DioError catch (e) {
      // debugPrint("parshu error " + e.message.toString());
      throw NewsExceptions.fromDioError(e);
    }
  }

  //******************************************Get News by Category and Subcategory  Id************************************************//
  Future<List<News>> getNewsByCategoryAndSubcategoryId(
      {required String path, required params}) async {
    try {
      final response = await _dio.post(path,
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application.dart/json",
          }),
          data: jsonEncode(params));

      final results = List<Map<String, dynamic>>.from(
        response.data['news'],
      );

      // debugPrint("parshu " + results.toString());

      final List<News> newsResult = results
          .map((articleData) => News.fromMap(articleData))
          .toList(growable: false);

      return newsResult;
    } on DioError catch (e) {
      // debugPrint("parshu error " + e.message.toString());
      throw NewsExceptions.fromDioError(e);
    }
  }

  //******************************************Get Notifications************************************************//
  Future<List<News>> getNotifications(
      {required String path, required params}) async {
    try {
      final response = await _dio.post(path,
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application.dart/json",
          }),
          data: jsonEncode(params));

      final results = List<Map<String, dynamic>>.from(
        response.data['news'],
      );

      // debugPrint("parshu " + results.toString());

      final List<News> newsResult = results
          .map((articleData) => News.fromMap(articleData))
          .toList(growable: false);

      return newsResult;
    } on DioError catch (e) {
      // debugPrint("parshu error " + e.message.toString());
      throw NewsExceptions.fromDioError(e);
    }
  }

  //******************************************Verify OTP************************************************//
  Future<List<News>> verifyOTP({required String path, required params}) async {
    try {
      final response = await _dio.post(path,
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application.dart/json",
          }),
          data: jsonEncode(params));

      final results = List<Map<String, dynamic>>.from(
        response.data['news'],
      );

      // debugPrint("parshu " + results.toString());

      final List<News> newsResult = results
          .map((articleData) => News.fromMap(articleData))
          .toList(growable: false);

      return newsResult;
    } on DioError catch (e) {
      // debugPrint("parshu error " + e.message.toString());
      throw NewsExceptions.fromDioError(e);
    }
  }

  //******************************************Update  User Profile************************************************//
  Future<List<News>> updateUserProfile(
      {required String path, required params}) async {
    try {
      final response = await _dio.post(path,
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application.dart/json",
          }),
          data: jsonEncode(params));

      final results = List<Map<String, dynamic>>.from(
        response.data['news'],
      );

      // debugPrint("parshu " + results.toString());

      final List<News> newsResult = results
          .map((articleData) => News.fromMap(articleData))
          .toList(growable: false);

      return newsResult;
    } on DioError catch (e) {
      // debugPrint("parshu error " + e.message.toString());
      throw NewsExceptions.fromDioError(e);
    }
  }

  //******************************************Search News************************************************//
  Future<List<News>> searchNews({required String path, required params}) async {
    try {
      final response = await _dio.post(path,
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application.dart/json",
          }),
          data: jsonEncode(params));

      final results = List<Map<String, dynamic>>.from(
        response.data['news'],
      );

      // debugPrint("parshu " + results.toString());

      final List<News> newsResult = results
          .map((articleData) => News.fromMap(articleData))
          .toList(growable: false);

      return newsResult;
    } on DioError catch (e) {
      // debugPrint("parshu error " + e.message.toString());
      throw NewsExceptions.fromDioError(e);
    }
  }

  //******************************************Get Miscellaneous************************************************//
  Future<List<News>> getMiscellaneous(
      {required String path, required params}) async {
    try {
      final response = await _dio.post(path,
          options: Options(headers: {
            HttpHeaders.contentTypeHeader: "application.dart/json",
          }),
          data: jsonEncode(params));

      final results = List<Map<String, dynamic>>.from(
        response.data['news'],
      );

      // debugPrint("parshu " + results.toString());

      final List<News> newsResult = results
          .map((articleData) => News.fromMap(articleData))
          .toList(growable: false);

      return newsResult;
    } on DioError catch (e) {
      // debugPrint("parshu error " + e.message.toString());
      throw NewsExceptions.fromDioError(e);
    }
  }
}
