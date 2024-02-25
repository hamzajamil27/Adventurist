import 'package:url_launcher/url_launcher.dart';

Future<void> launchURL(String urlString) async {
  final Uri url = Uri.parse(urlString);
  if (!await canLaunch(url.toString())) {
    throw Exception('Could not launch $url');
  } else {
    await launch(url.toString());
  }
}