import 'package:flutter/material.dart';
import '../config.dart';
import '../global_resources.dart';



Widget CustomListTile(String title, String value, BuildContext context){

  return Container(
    decoration: circularEdges(10, 10, 10, 10, Colors.white.withOpacity(.1)),
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: Row(children: [

      Text(title+" :  ", style: Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),),
      SizedBox(width: SizeConfig.kPadding * 2,),
      Expanded(child: Text(value, textAlign: TextAlign.end, style: Theme.of(context).textTheme.headline5,)),

    ],),
  );

}