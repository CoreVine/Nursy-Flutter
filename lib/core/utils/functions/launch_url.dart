import 'package:logger/logger.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchUrlHelper({required String url, bool? isPhone}) async {
  if (isPhone == true) {
    url = 'tel:$url';
  }
  final Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    );
    Logger().d('Launched $url');
  } else {
    Logger().e('Could not launch $url');
  }
}
