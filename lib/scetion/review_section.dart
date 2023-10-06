import 'package:flutter/material.dart';
import 'package:la_cuisine_datena/constants.dart';
import 'package:la_cuisine_datena/modele/make_it_responsive.dart';
import 'package:la_cuisine_datena/modele/review.dart';
import 'package:la_cuisine_datena/widgets/review_card.dart';
import 'package:la_cuisine_datena/widgets/title_text.dart';

class ReviewSection extends StatefulWidget{
  @override
  ReviewState createState() => ReviewState();
}
class ReviewState extends State<ReviewSection>{
  @override
  Widget build(BuildContext context) {
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    Size size = MediaQuery.of(context).size;
    double ratio = MakeItResponsive().getRatio(context);
    Size cardSize = size * ratio;
    List<Review> reviews = [archi,  moustache,fleur, leche,gourmand, dog ];
    List<ReviewCard> cards =  reviews.map((e) => ReviewCard(review: e, cardSize: cardSize,)).toList();
    return Container(
      width:size.width ,
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          Row(
            children: [
             TitleText(string: "Ils ont aimé:"),
              Padding(padding: EdgeInsets.all(10)),
              Expanded(child: Container())
            ],
          ),
          MakeItResponsive().responsiveRow(cards, screenSize)
        ],
      ),
    );
  }
}