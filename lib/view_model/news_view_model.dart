import 'package:flutter/material.dart';
import 'package:flutter_mvvm_tutorial/repository/news_repository_interface.dart';
import '../model/news_fetch_response_models.dart';

class NewsViewModel {
  final NewsRepositoryInterface repository;
  NewsViewModel({required this.repository});

  late NewsFetchResponseModels _news;
  NewsFetchResponseModels get news => _news;

  Future fetchNewsData() async {
    try {
      final data = await repository.fetchNewsData();
      _news = data;
    } on Exception {
      rethrow;
    } finally {
      debugPrint('End fetchNewsData from view_model.');
    }
  }
}
