import 'package:flutter/material.dart';
import 'package:la_cuisine_datena/constants.dart';
import 'package:la_cuisine_datena/widgets/branding.dart';

class PhoneBar extends AppBar{
  double Opacity;
 PhoneBar({required this.Opacity}) : super(
   title: Branding(),
       centerTitle: true,
     elevation: 0,
     backgroundColor: colorPink.withOpacity(Opacity),

 );
}