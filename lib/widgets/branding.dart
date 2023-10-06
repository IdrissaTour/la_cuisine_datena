import 'package:flutter/material.dart';
import 'package:la_cuisine_datena/constants.dart';
import 'package:la_cuisine_datena/widgets/title_text.dart';

class Branding extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Row(
     children: [
       TitleText(string: "La cuisine d'Athena"),
       Image.asset(cupcakeLogo, width: 40,height: 40,)
     ],
   );
  }
}