import 'package:flutter/cupertino.dart';

class MakeItResponsive{
  double minPoint = 640;
  double maxPoint = 1000;

  ScreenSize getScreenSize(BuildContext context){
   final size = MediaQuery.of(context).size;
    if(size.width > maxPoint ){
       return ScreenSize.large;
    } else if(size.width < minPoint){
      return ScreenSize.small;

    }else{
      return ScreenSize.medium;
    }

  }
  Widget responsiveRow (List<Widget> widgets , ScreenSize screenSize){

    int maxItem = 0;
    if(screenSize == ScreenSize.small){
      maxItem = 2;
    }else if(screenSize == ScreenSize.medium){
      maxItem = 3;
    }else{
      maxItem = 4;
    }
    List<List<Widget>> parseList = toArrays(widgets, maxItem);
    List<Column> colums = parseList.map((e) =>Column(
      children: e,)).toList();
    return Row(children: colums,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,);
  }

  List<List<Widget>> toArrays(List<Widget> widgts, int maxItem){

    // creer une liste vide

    List<List<Widget>> newList = [];

    // index
    int index =0;
    // creer des listes vide correspondants au max

    for(int i = 0; i < maxItem; i++ ){
      newList.add([]);
    }

    // passe à travers list de base pour peupler la nouvelle

    for(int x =0; x < widgts.length; x++){
      if(index >= maxItem){
        index = 0;
      }
      List<Widget> currentList =   newList[index] ?? [];
      currentList.add(widgts[x]);
      newList[index] = currentList;
      index++;
    }
    return newList;

  }

  double getRatio(BuildContext context){
    ScreenSize screenSize = getScreenSize(context);
    switch(screenSize){
      case ScreenSize.small : return 0.4;
      case ScreenSize.medium : return 0.25;
      case ScreenSize.small : return 0.2;
    }
    return 0.0;

  }
  double getScrolligOpacity(double userPosition, double
       screenHeight){
    double shouldBeOpaque = (screenHeight / 2);
    if(shouldBeOpaque <= userPosition){
      return 1;

    }else{
      return userPosition / shouldBeOpaque;
    }
  }


}

enum ScreenSize { small, medium, large}


