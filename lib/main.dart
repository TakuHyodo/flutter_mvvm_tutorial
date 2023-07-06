import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_mvvm_tutorial/view/news_widget.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends NewsWidget {
  const MyApp({super.key});
}




