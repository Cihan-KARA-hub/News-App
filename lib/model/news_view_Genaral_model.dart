import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:learn202/core/model/news_model.dart';
import 'package:learn202/core/network/news_enum.dart';
import 'package:learn202/model/views_controller/news_page_view.dart';

abstract class INewsModelView extends State<NewsPage> {
  //final Dio dio = NewsNetworkManager.instance.dio;

  List<Articles> models = [];
  Dio dio = Dio();

  final String _baseUrl = dotenv.env['NEWS_API_LINK']! + dotenv.env['API_KEY']!;

  Future<void> fetchAllGeneral() async {
    final responseEconomy = await dio.get(
      _baseUrl,
      queryParameters: {
        'q': ServicePath.general.rawValue,
      },
    );

    if (responseEconomy.statusCode == HttpStatus.ok) {
      final data = responseEconomy.data;
      if (data is Map<String, dynamic>) {
        List<dynamic> resultList = data['articles'];

        models = resultList.map((item) {
          return Articles.fromJson(item);
        }).toList();
        setState(() {});
      }
    }
  }
}
