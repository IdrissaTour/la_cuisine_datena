import 'package:flutter/material.dart';
import 'package:la_cuisine_datena/constants.dart';

class ContaireTextAndImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height/2,
      width: size.width,
      child:Center(
     child: Padding(padding: EdgeInsets.only(left:50,right: 50),
      child: Text("Des gateaux pour les gourmets à 4 pattes",
        style: TextStyle(
          color: Colors.red, fontSize: 30, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold,
        ),
       textAlign: TextAlign.center,

      ),

      ),
    ),
      decoration:BoxDecoration(
        image: DecorationImage(
          image: Image.asset(homeImage).image,
          fit: BoxFit.cover
        )
      ) ,
    );
  }
}