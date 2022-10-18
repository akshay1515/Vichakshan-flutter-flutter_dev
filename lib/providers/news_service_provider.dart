import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';
import 'package:vichakshan_news_flutter/services/news_api_services.dart';

final newsServiceProvider = Provider<NewsAPIServices>((ref) {
  return NewsAPIServices(Dio());
});
