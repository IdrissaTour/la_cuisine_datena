import 'package:flutter/material.dart';
import 'package:la_cuisine_datena/constants.dart';
import 'package:la_cuisine_datena/modele/make_it_responsive.dart';
import 'package:la_cuisine_datena/modele/occasion.dart';
import 'package:la_cuisine_datena/widgets/title_text.dart';
import 'package:la_cuisine_datena/widgets/widgetOccasion.dart';

class SectionOccasion extends StatelessWidget{
List<Occasion> occasions =[
  Occasion(name: "Mariage", path: weddingImage),
  Occasion(name: "Anniversaire", path: birthdayImage),
  Occasion(name: "Autres...", path: cupcakeImage)
];
  @override
  Widget build(BuildContext context) {
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    Size size =MediaQuery.of(context).size;
    bool isSmall = (screenSize == ScreenSize.small);
    Size cardSize = isSmall ? size/2:size/4;
   return Padding(padding: EdgeInsets.all(15),
     child: Column(
       children: [
        Row(
          children: [
            TitleText(string: "Occasion:"),
            Expanded(child: Container())
          ],
        ),
        Row(
          children: [
            Expanded(child: Container(
              child: Center(
              child:Text(isSmall? "Il y'a toujours une très bonne occasion\n pour déguster un gateau.....": "Il y'a toujours une très bonne occasion pour déguster un gateau.....",

    ) ,
    )
              ,
            )),

          ],
        ),
         adapToSize(isSmall, cardSize)

       ],
     ),

   );
  }
  Widget adapToSize( bool small, Size size){
    List<Widget> widgets = occasions.map((o) {
      return WidgetOccasion(size: size, occasion: o);
    }).toList();
   return (small)
       ? Column(children: widgets,)
       : Row(children: widgets,mainAxisAlignment: MainAxisAlignment.spaceEvenly,);
  }
}