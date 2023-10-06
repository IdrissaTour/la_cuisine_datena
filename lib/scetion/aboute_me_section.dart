import 'package:flutter/material.dart';
import 'package:la_cuisine_datena/constants.dart';
import 'package:la_cuisine_datena/widgets/title_text.dart';

class AbouteMeSection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
   return Container(
     padding: EdgeInsets.all(15),
     height:size.height/2.5,
     width: size.width,
     color: colorPink,
     child: Column(
       children: [
         Row(
           children: [
             TitleText(string: "A propos de moi:"),
             Expanded(child: Container())
           ],
         ),
         Row(
           children: [
             Expanded(child: Container()),
             SizedBox(
               height: size.height/6,
               width: size.height/6,
               child:ClipRRect(
                 borderRadius: BorderRadius.circular(size.height/6),
                 child: Image.asset(athenaImage, fit: BoxFit.cover,),
               ) ,
             )
           ],
         ), Text(aboutMe,style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),)
       ],
     ),
   );
  }
}