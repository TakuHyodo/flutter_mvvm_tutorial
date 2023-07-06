import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_mvvm_tutorial/provider/news_fetch_datastore_provider.dart';
import 'package:flutter_mvvm_tutorial/repository/news_repository.dart';
import 'package:flutter_mvvm_tutorial/repository/news_repository_interface.dart';

final newsRepositoryProvider = Provider<NewsRepositoryInterface>(
        (ref) => NewsRepository(dataStore: ref.read(newsFetchDataStoreProvider))
);