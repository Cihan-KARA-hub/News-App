import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class NewsNetworkManager {
  static NewsNetworkManager? _instace;
  static NewsNetworkManager get instance {
    if (_instace != null) return _instace!;
    _instace = NewsNetworkManager._init();
    return _instace!;
  }

  final String _baseUrl = dotenv.env['NEWS_API_LINK']! + dotenv.env['API_KEY']!;

  late final Dio dio;

  NewsNetworkManager._init() {
    dio = Dio(
      BaseOptions(
        baseUrl: _baseUrl ?? " NOT FOUND ",
      ),
    );
  }
}
