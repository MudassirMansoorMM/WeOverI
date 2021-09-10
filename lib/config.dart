import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';



class SizeConfig{

  static late double _screenWidth;
  static late double _screenHeight ;
  static late double _blockSizeHorizontal;
  static late double _blockSizeVertical ;

  static late double textMultiplier;
  static late double imageSizeMultiplier;
  static late double heightMultiplier  ;
  static late double kPadding  ;


  void init(BoxConstraints constraints, Orientation orientation ){

    if(orientation == Orientation.portrait){

      _screenWidth = constraints.maxWidth;
      _screenHeight = constraints.maxHeight;

    }else{
      _screenWidth = constraints.maxHeight;
      _screenHeight = constraints.maxWidth;
    }

    _blockSizeHorizontal = _screenWidth/100;
    _blockSizeVertical = _screenHeight/100;

    textMultiplier = _blockSizeVertical;
    imageSizeMultiplier = _blockSizeHorizontal; // Screen Width Block
    heightMultiplier = _blockSizeVertical;
    kPadding = heightMultiplier * 2;


    print(_blockSizeVertical);
    print(_blockSizeHorizontal);
  }

}