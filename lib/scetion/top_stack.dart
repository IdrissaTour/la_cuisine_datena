import 'package:flutter/material.dart';
import 'package:la_cuisine_datena/constants.dart';
import 'package:la_cuisine_datena/widgets/containerButton.dart';
import 'package:la_cuisine_datena/widgets/contaire_text_andImage.dart';

class TopStack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ContaireTextAndImage(),
       ContaireButton()


      ],
    );
  }
}