
// images path

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:la_cuisine_datena/modele/button_object.dart';
import 'package:la_cuisine_datena/modele/review.dart';
import 'package:la_cuisine_datena/modele/urlclass.dart';
import 'package:la_cuisine_datena/pages/next_page.dart';
import 'package:la_cuisine_datena/widgets/hover_button.dart';
import 'package:la_cuisine_datena/widgets/url_Button.dart';

String birthdayImage = "images/bday.jpg";
String brownieImage = "images/brownie.jpg";
String cheesecakeImage = "images/cheesecake.jpg";
String chocoImage = "images/choco.jpg";
String cupcakeImage = "images/cupcake.jpg";
String donutsImage = "images/donuts.jpg";
String tiramisuImage = "images/tiramisu.jpg";
String weddingImage = "images/wedding.jpg";
String cupcakeLogo = "images/cupcake.png";
String homeImage = "images/home.jpg";
String athenaImage = "images/athena.jpeg";
String pleaseImage = "images/please.jpg";
String flowersImage = "images/flowers.jpg";
String lecheImage = "images/leche.jpg";
String babinesImage = "images/babines.jpg";
String dogImage = "images/dog.jpg";
String grumpyImage = "images/grumpy.png";
String mouthImage = "images/mouth.jpg";
// couleur

Color colorPink = Color.fromRGBO(231,210, 209, 1);
List<ButtonObject> menuButton = [

    ButtonObject(Icon(Icons.add), "Ma cuisine", NextPage(), ),
   ButtonObject(Icon(Icons.add), "Mes recettes", NextPage(), ),
     ButtonObject(Icon(Icons.add), "Blog", NextPage(), ),
];

List<HoverButton> menuButtonHover() => menuButton.map((buttonObject) => HoverButton(buttonObject: buttonObject)).toList();
List<ButtonObject> containerButton = [

  ButtonObject(Icon(Icons.phone), "Téléphone", NextPage(), ),
  ButtonObject(Icon(Icons.message), "Mail", NextPage(), ),
  ButtonObject(Icon(Icons.person), "Visio", NextPage(), ),
];
List<FloatingActionButton> getFloating() => containerButton.map((btn) => FloatingActionButton(
onPressed: null, child: btn.icon,backgroundColor: colorPink,
  heroTag: btn.text,
)).toList();
List<HoverButton> getCardButton() => containerButton.map((e) => HoverButton(buttonObject:e)).toList();
List<Urlclass> socialNetwork = [
  Urlclass(name:"Facebook", url: "https://www.facebook.com"),
  Urlclass(name:"Instagram", url: "https://www.instagram.com"),
  Urlclass(name:"Twitter", url: "https://www.twitter.com"),
];
List<UrlButton> getSocialButton() =>socialNetwork.map((e) => UrlButton(urlclass: e)).toList();
// quote
String quote = "Pour bien cuisiner il faut de bons ingrédients, un palais, du coeur et des amis.";
String author = "Pierre Perret";
// aboute me
String aboutMe = "Ne vous fiez pas à mes apparences. Sous mon air sauvage se cache un fin gourmet.\n Grâce à mes fines griffes et mes coussinets moelleux, je saurai vous préparer de succulents petits plats.";
Review archi = Review(name: "Archibald", image: grumpyImage, comment: "Horrible ! Ces donuts étaient trop bons");
Review moustache = Review(name: "Moustache", image: pleaseImage, comment: "Gâteauuuuuuu!");
Review fleur =Review(name: "Fleur", image: flowersImage, comment: "C'était trop bon! J'ai même gardé la déco fleur du gâteau");
Review leche = Review(name: "Mistigri", image: lecheImage, comment: "Je m'en lèche encore les babines de mon cookie");
Review gourmand = Review(name: "Gourmand", image: mouthImage, comment: "Humain! Encore du gâteau");
Review dog = Review(name: "Medor", image: dogImage, comment: "Depuis que j'ai gouté les cupcakes d4athena, je me déguise qu'lle me prenne pour un chat");


