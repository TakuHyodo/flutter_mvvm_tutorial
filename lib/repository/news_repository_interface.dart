import 'package:flutter_mvvm_tutorial/model/news_fetch_response_models.dart';

abstract class NewsRepositoryInterface {
  Future<NewsFetchResponseModels> fetchNewsData();
}