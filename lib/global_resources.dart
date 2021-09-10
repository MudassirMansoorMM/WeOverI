


import 'package:flutter/material.dart';

/// Base Url
String baseUrl = "http://www.omdbapi.com/?apikey=c1dbd445&";

/// No Image Url
String noImageUrl = "https://freepikpsd.com/media/2019/10/blank-png-file-1-Transparent-Images.png";


///++++++++++++++++++++++++++ Circular Contrainer ++++++++++++++++++++++++++++++
///++++++++++++++++++++++++++ Circular Contrainer ++++++++++++++++++++++++++++++
BoxDecoration circularEdges(double topLeft, double topRight , double bottomLeft, double bottomRight , Color color ){


  return BoxDecoration(
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(topLeft) ,
        topRight:  Radius.circular(topRight),
        bottomLeft: Radius.circular(bottomLeft),
        bottomRight: Radius.circular(bottomRight)
    ),
    color: color,
  );


}

///++++++++++++++++++++++++++++  Color Declaration ++++++++++++++++++++++++++
///++++++++++++++++++++++++++++  Color Declaration ++++++++++++++++++++++++++
MaterialColor kBase = const MaterialColor(0xFF2F3339, kMatteBlack);
MaterialColor kBaseLight = const MaterialColor(0xFFDBA7B3, kBaseLightColor);
MaterialColor kRed = const MaterialColor(0xFFC72028, kRedColor);
MaterialColor kGrey =const MaterialColor(0xFFecf0f1, kGreyColor);
MaterialColor kBlack =const MaterialColor(0xFF000000, kBlackColor);


const Map<int, Color> kRedColor =
{
  50: Color.fromRGBO(199,32,40, .1),
  100:Color.fromRGBO(199,32,40, .2),
  200:Color.fromRGBO(199,32,40, .3),
  300:Color.fromRGBO(199,32,40, .4),
  400:Color.fromRGBO(199,32,40, .5),
  500:Color.fromRGBO(199,32,40, .6),
  600:Color.fromRGBO(199,32,40, .7),
  700:Color.fromRGBO(199,32,40, .8),
  800:Color.fromRGBO(199,32,40, .9),
  900:Color.fromRGBO(199,32,40,  1),
};





const Map<int, Color> kBaseLightColor =
{
  50: Color.fromRGBO(219,167,170, .1),
  100:Color.fromRGBO(219,167,170, .2),
  200:Color.fromRGBO(219,167,170, .3),
  300:Color.fromRGBO(219,167,170, .4),
  400:Color.fromRGBO(219,167,170, .5),
  500:Color.fromRGBO(219,167,170, .6),
  600:Color.fromRGBO(219,167,170, .7),
  700:Color.fromRGBO(219,167,170, .8),
  800:Color.fromRGBO(219,167,170, .9),
  900:Color.fromRGBO(219,167,170,  1),
};



const Map<int, Color> kMatteBlack =
{
  50: Color.fromRGBO(47,51,57, .1),
  100:Color.fromRGBO(47,51,57, .2),
  200:Color.fromRGBO(47,51,57, .3),
  300:Color.fromRGBO(47,51,57, .4),
  400:Color.fromRGBO(47,51,57, .5),
  500:Color.fromRGBO(47,51,57, .6),
  600:Color.fromRGBO(47,51,57, .7),
  700:Color.fromRGBO(47,51,57, .8),
  800:Color.fromRGBO(47,51,57, .9),
  900:Color.fromRGBO(47,51,57,  1),
};



const Map<int, Color> kGreyColor =
{
  50: Color.fromRGBO(236, 240, 241, .1),
  100:Color.fromRGBO(236, 240, 241, .2),
  200:Color.fromRGBO(236, 240, 241, .3),
  300:Color.fromRGBO(236, 240, 241, .4),
  400:Color.fromRGBO(236, 240, 241, .5),
  500:Color.fromRGBO(236, 240, 241, .6),
  600:Color.fromRGBO(236, 240, 241, .7),
  700:Color.fromRGBO(236, 240, 241, .8),
  800:Color.fromRGBO(236, 240, 241, .9),
  900:Color.fromRGBO(236, 240, 241,  1),
};


const Map<int, Color> kBlackColor =
{
  50: Color.fromRGBO(000,000,000, .1),
  100:Color.fromRGBO(0,0,0, .2),
  200:Color.fromRGBO(0,0,0, .3),
  300:Color.fromRGBO(0,0,0, .4),
  400:Color.fromRGBO(0,0,0, .5),
  500:Color.fromRGBO(0,0,0, .6),
  600:Color.fromRGBO(0,0,0, .7),
  700:Color.fromRGBO(0,0,0, .8),
  800:Color.fromRGBO(0,0,0, .9),
  900:Color.fromRGBO(000,000,0, 1),
};

///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
