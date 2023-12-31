import 'package:flutter/material.dart';
import 'package:flutter_mvvm_tutorial/datastore/news_fetch_datastore_interface.dart';
import 'package:flutter_mvvm_tutorial/model/news_fetch_response_models.dart';
import 'package:flutter_mvvm_tutorial/repository/news_repository_interface.dart';

class NewsRepository implements NewsRepositoryInterface {
  final NewsFetchDataStoreInterface dataStore;
  NewsRepository({required this.dataStore});

  @override
  Future<NewsFetchResponseModels> fetchNewsData() async {
    try {
      final data = await dataStore.fetchNewsData();
      return data;
    } on Exception catch(exception) {
      rethrow;
    } finally {
      debugPrint('End fetchNewsData from repository.');
    }
  }
}