import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvvm_tutorial/datastore/news_fetch_datastore_interface.dart';
import 'package:flutter_mvvm_tutorial/exceptions/news_api_exception.dart';
import 'package:flutter_mvvm_tutorial/model/news_fetch_response_model.dart';
import 'package:flutter_mvvm_tutorial/model/news_fetch_response_models.dart';

class NewsFetchDataStore implements NewsFetchDataStoreInterface {
  final Dio dio;
  NewsFetchDataStore({required this.dio});

  @override
  Future<NewsFetchResponseModels> fetchNewsData() async {
    const url = 'https://newsapi.org/v2/top-headlines?country=jp&apiKey=5bd16c7d09674b0db4411cb280fe3030';

    try {
      final response = await dio.get(url);
      final responseData = response.data;
      final List<dynamic> datas = responseData['articles'];
      final models = NewsFetchResponseModels();

      datas.forEach((data) {
        final model = NewsFetchResponseModel.fromData(data);
        models.datas.add(model);
      });

      return models;
    } on Exception catch(parentException) {
      debugPrint('Fail fetchNewsData.');
      throw NewsApiException(parentException);
    } finally {
      debugPrint('End fetchNewsData from datastore.');
    }
  }
}
