import 'package:canton_design_system/canton_design_system.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vichakshan_news_flutter/models/CommonResult.dart';

import '../config/config.dart';
import '../models/Categories.dart';

import '../models/News.dart';
import 'news_service_provider.dart';

//******************************************Get News by Category Id************************************************//

AutoDisposeFutureProvider<List<News>> getNewsCategoryIdProvider(
    {required parameters}) {
  final newsCategoryProvider =
      FutureProvider.autoDispose<List<News>>((ref) async {
    final newsService = ref.read(newsServiceProvider);
    final articles = newsService.getNewsCategoryById(
        path: Config.getBaseUrl(url: 'getNewsByCategoryId'),
        params: parameters);
    debugPrint("parshu article" + articles.toString());
    return articles;
  });

  return newsCategoryProvider;
}

//******************************************Get All Categories************************************************//

AutoDisposeFutureProvider<CategoriesResponse> getAllCategoryProvider(
    {required parameters}) {
  final allCategoryProvider =
      FutureProvider.autoDispose<CategoriesResponse>((ref) async {
    final newsService = ref.read(newsServiceProvider);
    final articles = newsService.getAllCategories(
        path: Config.getBaseUrl(url: 'getAllCategories'), params: parameters);
    // debugPrint("parshu article" + articles.toString());
    return articles;
  });

  return allCategoryProvider;
}

//******************************************Get User Id************************************************//

AutoDisposeFutureProvider<List<News>> getUserIdProvider({required parameters}) {
  final userIdProvider = FutureProvider.autoDispose<List<News>>((ref) async {
    final newsService = ref.read(newsServiceProvider);
    final articles = newsService.getUserId(
        path: Config.getBaseUrl(url: 'getUserId'), params: parameters);
    // debugPrint("parshu article" + articles.toString());
    return articles;
  });
  return userIdProvider;
}

//******************************************Add Remove Intereset************************************************//

AutoDisposeFutureProvider<List<News>> addRemoveInterestProvider(
    {required parameters}) {
  final addRIProvider = FutureProvider.autoDispose<List<News>>((ref) async {
    final newsService = ref.read(newsServiceProvider);
    final articles = newsService.addRemoveInterest(
        path: Config.getBaseUrl(url: 'addRemoveInterest'), params: parameters);
    // debugPrint("parshu article" + articles.toString());
    return articles;
  });

  return addRIProvider;
}

//******************************************Add Pinned News View Status************************************************//

AutoDisposeFutureProvider<List<News>> addPinedNewsViewSatusProvider(
    {required parameters}) {
  final addPinStatusProvider =
      FutureProvider.autoDispose<List<News>>((ref) async {
    final newsService = ref.read(newsServiceProvider);
    final articles = newsService.addPinedNewsViewStatus(
        path: Config.getBaseUrl(url: 'addPinedNewsViewSatus'),
        params: parameters);
    // debugPrint("parshu article" + articles.toString());
    return articles;
  });

  return addPinStatusProvider;
}

//******************************************Add Remove Bookmark************************************************//

AutoDisposeFutureProvider<List<News>> addRemoveBookmarkProvider(
    {required parameters}) {
  final addRBProvider = FutureProvider.autoDispose<List<News>>((ref) async {
    final newsService = ref.read(newsServiceProvider);
    final articles = newsService.addRemoveBookmark(
        path: Config.getBaseUrl(url: 'addRemoveBookmark'), params: parameters);
    // debugPrint("parshu article" + articles.toString());
    return articles;
  });

  return addRBProvider;
}

//******************************************Update View Count************************************************//

AutoDisposeFutureProvider<List<News>> updateViewCountProvider(
    {required parameters}) {
  final viewCountProvider = FutureProvider.autoDispose<List<News>>((ref) async {
    final newsService = ref.read(newsServiceProvider);
    final articles = newsService.updateViewCount(
        path: Config.getBaseUrl(url: 'updateViewCount'), params: parameters);
    // debugPrint("parshu article" + articles.toString());
    return articles;
  });

  return viewCountProvider;
}

//******************************************Get News By Id************************************************//

AutoDisposeFutureProvider<List<News>> getNewsByIdProvider(
    {required parameters}) {
  final newsByIdProvider = FutureProvider.autoDispose<List<News>>((ref) async {
    final newsService = ref.read(newsServiceProvider);
    final articles = newsService.getNewsById(
        path: Config.getBaseUrl(url: 'getNewsById'), params: parameters);
    // debugPrint("parshu article" + articles.toString());
    return articles;
  });

  return newsByIdProvider;
}

//******************************************Apply Citizen Journalism************************************************//

AutoDisposeFutureProvider<List<News>> applyCitizenJournalismProvider(
    {required parameters}) {
  final citizenJounalismProvider =
      FutureProvider.autoDispose<List<News>>((ref) async {
    final newsService = ref.read(newsServiceProvider);
    final articles = newsService.applyCitizenJournalism(
        path: Config.getBaseUrl(url: 'applyCitizenJournalism'),
        params: parameters);
    // debugPrint("parshu article" + articles.toString());
    return articles;
  });

  return citizenJounalismProvider;
}

//******************************************Get User Details************************************************//

AutoDisposeFutureProvider<List<News>> getUserDetailsProvider(
    {required parameters}) {
  final userDetailsProvider =
      FutureProvider.autoDispose<List<News>>((ref) async {
    final newsService = ref.read(newsServiceProvider);
    final articles = newsService.getUserDetails(
        path: Config.getBaseUrl(url: 'getUserDetails'), params: parameters);
    // debugPrint("parshu article" + articles.toString());
    return articles;
  });

  return userDetailsProvider;
}

//******************************************Get Comments************************************************//

AutoDisposeFutureProvider<List<News>> getCommentsProvider(
    {required parameters}) {
  final commentsProvider = FutureProvider.autoDispose<List<News>>((ref) async {
    final newsService = ref.read(newsServiceProvider);
    final articles = newsService.getComments(
        path: Config.getBaseUrl(url: 'getComments'), params: parameters);
    // debugPrint("parshu article" + articles.toString());
    return articles;
  });

  return commentsProvider;
}

//******************************************Add Remove Comments************************************************//

AutoDisposeFutureProvider<List<News>> addRemoveCommnetsProvider(
    {required parameters}) {
  final addRCProvider = FutureProvider.autoDispose<List<News>>((ref) async {
    final newsService = ref.read(newsServiceProvider);
    final articles = newsService.addRemoveComment(
        path: Config.getBaseUrl(url: 'addRemoveComments'), params: parameters);
    // debugPrint("parshu article" + articles.toString());
    return articles;
  });

  return addRCProvider;
}

//******************************************Get Bookmark News************************************************//

AutoDisposeFutureProvider<List<News>> getBookmarkNewsProvider(
    {required parameters}) {
  final bookmarkNewsProvider =
      FutureProvider.autoDispose<List<News>>((ref) async {
    final newsService = ref.read(newsServiceProvider);
    final articles = newsService.getBookmarkNews(
        path: Config.getBaseUrl(url: 'getBookmarkNews'), params: parameters);
    // debugPrint("parshu article" + articles.toString());
    return articles;
  });

  return bookmarkNewsProvider;
}

//******************************************Submit Feedback************************************************//

AutoDisposeFutureProvider<List<News>> submitFeedbackProvider(
    {required parameters}) {
  final feedbackProvider = FutureProvider.autoDispose<List<News>>((ref) async {
    final newsService = ref.read(newsServiceProvider);
    final articles = newsService.submitFeedback(
        path: Config.getBaseUrl(url: 'submitFeedback'), params: parameters);
    // debugPrint("parshu article" + articles.toString());
    return articles;
  });

  return feedbackProvider;
}

//******************************************Send OTP************************************************//

AutoDisposeFutureProvider<CommonResult> sendOTPProvider({required parameters}) {
  final otpProvider = FutureProvider.autoDispose<CommonResult>((ref) async {
    final newsService = ref.read(newsServiceProvider);
    final articles = newsService.sendOTP(
        path: Config.getBaseUrl(url: 'sendOTP'), params: parameters);
    // debugPrint("parshu article" + articles.toString());
    return articles;
  });
  return otpProvider;
}

//******************************************Sign In With Google************************************************//

AutoDisposeFutureProvider<List<News>> signInWithGoogleProvider(
    {required parameters}) {
  final googleSignProvider =
      FutureProvider.autoDispose<List<News>>((ref) async {
    final newsService = ref.read(newsServiceProvider);
    final articles = newsService.signInWithGoogle(
        path: Config.getBaseUrl(url: 'signInWithGoogle'), params: parameters);
    // debugPrint("parshu article" + articles.toString());
    return articles;
  });

  return googleSignProvider;
}

//******************************************Get News By Category and Subcategory Id************************************************//

AutoDisposeFutureProvider<List<News>> getNewsByCategoryAndSubcategoryIdProvider(
    {required parameters}) {
  final newsCSProvider = FutureProvider.autoDispose<List<News>>((ref) async {
    final newsService = ref.read(newsServiceProvider);
    final articles = newsService.getNewsByCategoryAndSubcategoryId(
        path: Config.getBaseUrl(url: 'getNewsByCategoryAndSubcategoryId'),
        params: parameters);
    // debugPrint("parshu article" + articles.toString());
    return articles;
  });

  return newsCSProvider;
}

//******************************************Get Notifications************************************************//

AutoDisposeFutureProvider<List<News>> getNotificationsProvider(
    {required parameters}) {
  final notificationProvider =
      FutureProvider.autoDispose<List<News>>((ref) async {
    final newsService = ref.read(newsServiceProvider);
    final articles = newsService.getNotifications(
        path: Config.getBaseUrl(url: 'getNotifications'), params: parameters);
    // debugPrint("parshu article" + articles.toString());
    return articles;
  });

  return notificationProvider;
}

//******************************************Verify OTP************************************************//

AutoDisposeFutureProvider<List<News>> verifyOTPProvider({required parameters}) {
  final vOTPProvider = FutureProvider.autoDispose<List<News>>((ref) async {
    final newsService = ref.read(newsServiceProvider);
    final articles = newsService.verifyOTP(
        path: Config.getBaseUrl(url: 'verifyOTP'), params: parameters);
    // debugPrint("parshu article" + articles.toString());
    return articles;
  });
  return vOTPProvider;
}

//******************************************Update User Profile************************************************//

AutoDisposeFutureProvider<List<News>> updateUserProfileProvider(
    {required parameters}) {
  final profileProvider = FutureProvider.autoDispose<List<News>>((ref) async {
    final newsService = ref.read(newsServiceProvider);
    final articles = newsService.updateUserProfile(
        path: Config.getBaseUrl(url: 'updateUserProfile'), params: parameters);
    // debugPrint("parshu article" + articles.toString());
    return articles;
  });

  return profileProvider;
}

//******************************************Search News************************************************//

AutoDisposeFutureProvider<List<News>> searchNewsProvider(
    {required parameters}) {
  final searchProvider = FutureProvider.autoDispose<List<News>>((ref) async {
    final newsService = ref.read(newsServiceProvider);
    final articles = newsService.searchNews(
        path: Config.getBaseUrl(url: 'searchNews'), params: parameters);
    // debugPrint("parshu article" + articles.toString());
    return articles;
  });

  return searchProvider;
}
