import 'package:flutter/material.dart';
import 'package:la_cuisine_datena/modele/occasion.dart';

class WidgetOccasion extends StatefulWidget{
  Size size;
  Occasion occasion;
  WidgetOccasion({required this.size, required this.occasion});
    @override
  WidgetOcca createState() => WidgetOcca();
}
class WidgetOcca extends State<WidgetOccasion>{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: widget.size.height,
            width: widget.size.height,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset(widget.occasion.path),
            ),
          ),
         Text(widget.occasion.name, style:  TextStyle(fontStyle: FontStyle.italic,
         fontWeight: FontWeight.bold
         ),)
        ],
      ),
    );
  }
}