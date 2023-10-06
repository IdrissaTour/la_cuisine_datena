import 'package:flutter/material.dart';
import 'package:la_cuisine_datena/modele/button_object.dart';

class HoverButton extends StatefulWidget{

  ButtonObject buttonObject;

  HoverButton({required this.buttonObject});
  @override
  HoverState createState() => HoverState();
}

class HoverState extends State<HoverButton>{
  bool hoverValue = false;
  @override
  Widget build(BuildContext context) {
  return InkWell(
   child: Padding(padding: EdgeInsets.only(left: 8, right: 8),
   child: Column(
     mainAxisSize: MainAxisSize.min,
     children: [
       Text(
         widget.buttonObject.text ?? "", style: TextStyle(color: (hoverValue)? Colors.brown:Colors.pink),
       ),
       Container(
         height: 2,
         width: 50,
         color: hoverValue ? Colors.grey:Colors.transparent,
       )
     ],
   ),
   ),
    onTap: (){
      Navigator.push(context,
          MaterialPageRoute(builder: (context){
            return widget.buttonObject.destination;
          })
      );

    },
    onHover: (hover){
     setState(() {
       hoverValue =hover;
     });
    },
  );
  }
}