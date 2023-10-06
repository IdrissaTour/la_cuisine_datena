import 'package:flutter/material.dart';
import 'package:la_cuisine_datena/constants.dart';
import 'package:la_cuisine_datena/modele/button_object.dart';
import 'package:la_cuisine_datena/pages/next_page.dart';
import 'package:la_cuisine_datena/widgets/branding.dart';
import 'package:la_cuisine_datena/widgets/hover_button.dart';

class WebBar extends PreferredSize{
  Size? size;
  double Opacity;
  WebBar({@required this.size, required this.Opacity}) : super(
    preferredSize: Size(size!.width, size.height/3),
    child: Container(
      padding: EdgeInsets.all(10),
      color:  colorPink.withOpacity(Opacity),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Branding(),
          Expanded(child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:menuButtonHover(),
          )),
          HoverButton(buttonObject: ButtonObject(Icon(Icons.add), "Log in", NextPage(), ))
        ],
      ),
    )
  );
}