class NewsApiException implements Exception {
  NewsApiException(this.parentException);

  dynamic parentException;

  String get message {
    return 'An error has occurred';
  }
}