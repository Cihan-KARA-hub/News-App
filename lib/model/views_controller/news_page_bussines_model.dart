import 'package:flutter/material.dart';

import '../../view/page_view/news_bitcoin_view.dart.dart';

class NewsPageBitcoin extends StatefulWidget {
  String konu;
  NewsPageBitcoin({super.key, required this.konu});

  @override
  NewsPageBitcoinView createState() => new NewsPageBitcoinView();
}
