import 'package:flutter/material.dart';
import 'package:la_cuisine_datena/constants.dart';
import 'package:la_cuisine_datena/widgets/title_text.dart';

class ContactSection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
     width: size.width,
      color: colorPink,
      padding: EdgeInsets.all(30),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
           TitleText(string: "Contact" , ),
          Padding(padding: EdgeInsets.all(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Column(

               children: social(),
             ),

              Column(
                children: [
                  Text("Contactez nous"),
                  TextButton(onPressed: null, child: Text("+223 92206346")),
                  TextButton(onPressed: null, child: Text("Mail: idrissat805@gmail.com" ))
                ],
              )
            ],
          ),

        ],
      ),

    );
  }
  List<Widget> social(){
    List<Widget> items = [Text("Social")];
    items.addAll(getSocialButton());
    return items;
  }
}