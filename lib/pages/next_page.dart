import 'package:flutter/material.dart';
import 'package:la_cuisine_datena/modele/make_it_responsive.dart';
import 'package:la_cuisine_datena/widgets/phone_bar.dart';
import 'package:la_cuisine_datena/widgets/web-bar.dart';

class NextPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
   return Scaffold(
     appBar:AppBar(),
     body: Center(child: Text("Nous sommes sur la page suivante"),),
   );
  }
}