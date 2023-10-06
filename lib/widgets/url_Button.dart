import 'package:flutter/material.dart';
import 'package:la_cuisine_datena/modele/urlclass.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class UrlButton extends StatelessWidget{
  final Urlclass urlclass ;
  UrlButton({required this.urlclass});
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed:laucher ,
        child: Text(urlclass.name)
    );
  }
  laucher() async {
    await canLaunchUrlString(urlclass.url) ? await launchUrlString(urlclass.url):throw"Impossible de lancer";
  }

}