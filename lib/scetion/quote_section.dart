import 'package:flutter/material.dart';
import 'package:la_cuisine_datena/constants.dart';

class QuoteSection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Container(
     padding: EdgeInsets.all(40),
     child: Card(
       color: colorPink,
       elevation: 7,
       child: Column(
         children: [
           Text(quote, style: TextStyle(
             color: Colors.grey, fontSize: 25, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic
           ),),
           Divider(),
         Row(
           children: [
             Expanded(child: Container()),
             Text(author, style: TextStyle(color: Colors.red),)
           ],
         )
         ],
       ),
     ),
   );
  }
}