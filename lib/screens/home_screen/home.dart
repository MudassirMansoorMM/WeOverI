import 'package:flutter/material.dart';
import '../../../config.dart';
import '../../custom_widgets/custom_app_bar.dart';
import '../../screens/home_screen/components/search_bar.dart';
import '../../../global_resources.dart';
import 'components/home_body.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);


  void search(){}


  @override
  Widget build(BuildContext context) {


    return Scaffold(

      backgroundColor: kRed,

      appBar: CustomAppBar( titleText: "Movies"),

      body: Column(children: [

        /// Search Bar
        SizedBox(
          height: SizeConfig.heightMultiplier * 10,
          child: const SearchBar(),
        ),



        /// Body Widget
        const Expanded(
            child: Body()
        )

      ],),

    );


  }





}
