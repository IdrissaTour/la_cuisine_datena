import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:la_cuisine_datena/constants.dart';
import 'package:la_cuisine_datena/modele/carousel_image.dart';
import 'package:la_cuisine_datena/modele/make_it_responsive.dart';
import 'package:la_cuisine_datena/widgets/title_text.dart';

class CarouselSection extends StatefulWidget{
  @override
  CarouselState createState() => CarouselState();
}
class CarouselState extends State<CarouselSection>{
  int index = 0;
  CarouselController _carouselController = CarouselController();



  List<CarouselImage> images = [
    CarouselImage(name: "Brownies", path: brownieImage),
    CarouselImage(name: "Cheesecake", path: cheesecakeImage),
    CarouselImage(name: "Gateu au chocolat", path: chocoImage),
    CarouselImage(name: "Cupcake", path: cupcakeImage),
    CarouselImage(name: "Donuts", path: donutsImage),
    CarouselImage(name: "Tiramisu", path: tiramisuImage),
    CarouselImage(name: "wedding", path: weddingImage),

  ];

  Widget card (CarouselImage image){
    return Container(
      child: Center(child: Text(image.name, style: TextStyle(fontSize: 18),) ),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: Image.asset(image.path).image
          )
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    ScreenSize screenSize = MakeItResponsive().getScreenSize(context);
    final items = images.map((e) =>card(e)).toList();
    CarouselOptions options = CarouselOptions(
        autoPlay: true,
        aspectRatio: 16/9,
        enlargeCenterPage: true,
        onPageChanged: (newindex, raison){
          setState(() {
            index =newindex;
          });
        }
    );
    return Column(

      children: [
        Row(
          children: [
            TitleText(string: "Le Carousel du Gateau"),
            Expanded(child: Container())
          ],
        ),
        CarouselSlider(
          items: items,
          options: options,
          carouselController: _carouselController,

        ),

        Padding(padding: EdgeInsets.all(20),


          child: Card(
            color: colorPink,
            elevation: 5,

            child: Padding(padding: EdgeInsets.only(top: 10, bottom: 10),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for(int i =0; i < images.length; i++)
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                          child: Text((screenSize != ScreenSize.small)?images[i].name : i.toString()),
                          onTap: ()=> _carouselController.animateToPage(i),
                        ),
                        Visibility(
                            maintainAnimation: true,
                            maintainSize: true,
                            maintainState: true,
                            visible: (index == i),
                            child: AnimatedOpacity(
                              opacity: 1,
                              duration: Duration(milliseconds: 750),
                              child: Container(
                                height: 5,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(2.5)
                                ),
                              ),
                            )
                        )
                      ],
                    )
                ],
              ) ,
            )
            ,
          )

        )
      ],
    );

  }
}