import 'package:flutter/material.dart';
import 'package:la_cuisine_datena/constants.dart';
import 'package:la_cuisine_datena/modele/button_object.dart';
import 'package:la_cuisine_datena/widgets/branding.dart';
import 'package:la_cuisine_datena/widgets/hover_button.dart';

class DramwerSmall extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Drawer(
       child:ListView.separated(
           itemBuilder: (context, index){
             if(index == 0){
               return Center(
                 child:Branding() ,
               );

             }else{
               ButtonObject button = menuButton[index-1];
               return ListTile(
                 title: Text(button.text ?? ""),
                 onTap: (){
                   Navigator.of(context).pop();
                   Navigator.push(context, MaterialPageRoute(builder:(context) => button.destination));

                 },
               );
             }

           },
           separatorBuilder: (context, index) => Divider(),
           itemCount: menuButton.length + 1
       ) ,
     );

  }
}