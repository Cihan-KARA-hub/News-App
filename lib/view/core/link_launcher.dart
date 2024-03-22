import 'package:url_launcher/url_launcher.dart';

class Launcher {
  void launchURL(String url) async {
    if (await canLaunchUrl(Uri(path: url))) {
      await launchUrl(Uri(path: url));
    } else {
      throw 'URL başlatılamadı: $url';
    }
  }
}
