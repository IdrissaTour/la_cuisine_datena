import 'package:flutter/material.dart';
import 'package:la_cuisine_datena/constants.dart';
import 'package:la_cuisine_datena/modele/review.dart';

class ReviewCard extends StatefulWidget{
 Size cardSize;
  Review review;
  ReviewCard({required this.review, required this.cardSize});
   @override
  RCState createState()=> RCState();
}

class RCState extends State<ReviewCard>{
  bool ishover = false;
  @override
  Widget build(BuildContext context) {
   return InkWell(
     onTap: (){
       print("ontapped");
     },
     onHover:(value){
       setState(() {
         ishover = value;
       });
     },
     child: Container(
       height: widget.cardSize.height,
       width:(ishover) ? widget.cardSize.width + 30 : widget.cardSize.width ,
       child: Card(
         shadowColor: Colors.transparent,
         borderOnForeground: false,
         elevation: (ishover) ? 7 : 0,
         color: colorPink,
         child: Column(
           children: [
             Text(widget.review.name),
             Expanded(child: ClipRRect(
               child: Image.asset(widget.review.image, fit: BoxFit.cover,
               width: widget.cardSize.width -20,
               ),
               borderRadius: BorderRadius.circular(20),
             )),
             Text(widget.review.comment)
           ],
         ),
       ),
     ),
   );
  }
}