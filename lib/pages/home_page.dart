import 'package:flutter/material.dart';
import 'package:la_cuisine_datena/modele/make_it_responsive.dart';
import 'package:la_cuisine_datena/scetion/SectionOccasion.dart';
import 'package:la_cuisine_datena/scetion/aboute_me_section.dart';
import 'package:la_cuisine_datena/scetion/carousel_section.dart';
import 'package:la_cuisine_datena/scetion/quote_section.dart';
import 'package:la_cuisine_datena/scetion/review_section.dart';
import 'package:la_cuisine_datena/scetion/section_contact.dart';
import 'package:la_cuisine_datena/widgets/containerButton.dart';
import 'package:la_cuisine_datena/widgets/contaire_text_andImage.dart';
import 'package:la_cuisine_datena/widgets/drawer_small.dart';
import 'package:la_cuisine_datena/widgets/phone_bar.dart';
import 'package:la_cuisine_datena/scetion/top_stack.dart';
import 'package:la_cuisine_datena/widgets/web-bar.dart';

class HomePage extends StatefulWidget{
    @override
  HomeState createState() => HomeState();
}
class HomeState extends State<HomePage>{
  ScrollController _scrollController = ScrollController();
  double currentUserPostion = 0;
  setupScrollListner(){
    setState(() {
      currentUserPostion = _scrollController.position.pixels;
      print(currentUserPostion);
    });
  }
  @override
  void initState() {
    _scrollController.addListener(setupScrollListner);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    double Opacity = MakeItResponsive().getScrolligOpacity(currentUserPostion, size.height);
   return Scaffold(
     extendBodyBehindAppBar: true,
     appBar: (screenSize == ScreenSize.small)?PhoneBar(Opacity:Opacity ,):WebBar(size: size, Opacity: Opacity,),
         drawer:  DramwerSmall(),

         body: SingleChildScrollView(
           controller: _scrollController,
           child: Column(
             children: [
               TopStack(),
               SectionOccasion(),
               AbouteMeSection(),
               CarouselSection(),
               QuoteSection(),
               ReviewSection(),
               ContactSection()
             ],
           ),
         ),

   );
  }
}