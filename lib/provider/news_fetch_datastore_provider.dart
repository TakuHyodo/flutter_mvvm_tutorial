import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_mvvm_tutorial/datastore/news_fetch_datastore_interface.dart';
import 'package:flutter_mvvm_tutorial/datastore/news_fetch_datastore.dart';
import 'package:flutter_mvvm_tutorial/provider/dio_provider.dart';

final newsFetchDataStoreProvider = Provider<NewsFetchDataStoreInterface>(
        (ref) => NewsFetchDataStore(dio: ref.read(dioProvider))
);