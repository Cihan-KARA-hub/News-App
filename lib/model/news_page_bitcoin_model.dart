import 'dart:io';
import 'dart:js_util';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:learn202/core/model/news_model.dart';
import 'package:learn202/core/network/news_enum.dart';
import 'package:learn202/core/network/news_network_manager.dart';

import 'views_controller/news_page_bussines_model.dart';

abstract class INewsModelViewBitcoin extends State<NewsPageBitcoin> {
  final Dio dio = NewsNetworkManager.instance.dio;

  List<Articles> models = [];

  Future<void> fetchAllEntertainment() async {
    final responseEconomy = await dio
        .get(queryParameters: {'q': ServicePath.entertainment.rawValue});

    if (responseEconomy.statusCode == HttpStatus.ok) {
      final data = responseEconomy.data;
      if (data is Map<String, dynamic>) {
        List<dynamic> resultList = data['articles'];

        models = resultList.map((item) {
          return Articles.fromJson(item);
        }).toList();
      }
    }
    setState(() {});
  }

  Future<void> fetchAllTech() async {
    final responseEconomy = await dio.get(
      _baseUrl,
      queryParameters: {
        'q': ServicePath.technology.rawValue,
      },
    );

    if (responseEconomy.statusCode == HttpStatus.ok) {
      final data = responseEconomy.data;
      if (data is Map<String, dynamic>) {
        List<dynamic> resultList = data['articles'];

        models = resultList.map((item) {
          return Articles.fromJson(item);
        }).toList();
      }
    }
    setState(() {});
  }

  Future<void> fetchAllSeince() async {
    final responseEconomy = await dio.get(
      _baseUrl,
      queryParameters: {
        'q': ServicePath.science.rawValue,
      },
    );

    if (responseEconomy.statusCode == HttpStatus.ok) {
      final data = responseEconomy.data;
      if (data is Map<String, dynamic>) {
        List<dynamic> resultList = data['articles'];

        models = resultList.map((item) {
          return Articles.fromJson(item);
        }).toList();
      }
    }
    setState(() {});
  }

  Future<void> fetchAllSpor() async {
    final responseEconomy = await dio.get(
      _baseUrl,
      queryParameters: {
        'q': ServicePath.sports.rawValue,
      },
    );

    if (responseEconomy.statusCode == HttpStatus.ok) {
      final data = responseEconomy.data;
      if (data is Map<String, dynamic>) {
        List<dynamic> resultList = data['articles'];

        models = resultList.map((item) {
          return Articles.fromJson(item);
        }).toList();
      }
    }
    setState(() {});
  }
}
