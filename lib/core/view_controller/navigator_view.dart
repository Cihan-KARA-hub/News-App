import 'package:learn202/model/views_controller/news_page_view.dart';
import 'package:learn202/view/page_view/home_view.dart';
import 'package:learn202/view/page_view/news_view.dart';

import 'package:learn202/view/page_view/profile_view.dart';

class NavigatorManager {
  static pages(int value) {
    switch (value) {
      case 0:
        return const HomePage();
      case 1:
        return NewsPage();
      case 2:
        return const ProfilePage();
    }
  }
}
