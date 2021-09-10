import 'package:flutter/material.dart';
import '../../../custom_widgets/custom_list_tile.dart';
import '../../../models/movie_details_model.dart';
import '../../../config.dart';
import '../../../global_resources.dart';



class Body extends StatelessWidget {

  final MovieDetails details;

  const Body({Key? key, required this.details }) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(

      child: Column(children: [

        SizedBox(
            width: SizeConfig.imageSizeMultiplier * 100,
            child: Image.network(
              details.poster != "N/A" ? details.poster : noImageUrl, fit: BoxFit.cover,)
        ),

        CustomListTile("Movie", details.title, context),
        CustomListTile("Year", details.year, context),
        CustomListTile("Genre", details.genre, context),
        CustomListTile("Cast", details.actors, context),
        CustomListTile("BoxOffice", details.boxOffice, context),
        CustomListTile("Country", details.country, context),
        CustomListTile("Rating", details.imdbRating, context),
        CustomListTile("Language", details.language, context),
        CustomListTile("Plot", details.plot, context),


      ],),
    );

  }



}
