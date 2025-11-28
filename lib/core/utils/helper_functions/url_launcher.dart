import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> Url_Launcher(context, String previewLink) async {
  Uri uri = Uri.parse(previewLink!);
  if (!await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('canot preveiw'), duration: Duration(seconds: 5)),
    );
  }
}
