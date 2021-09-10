import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/../provider/movie_details_provider.dart';
import '/../models/movie_model.dart';
import '/../provider/movies_provider.dart';
import '../../../config.dart';
import '../../../global_resources.dart';




class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    return Container(

        width: SizeConfig.imageSizeMultiplier * 100,

        decoration: circularEdges(20, 20, 0, 0, kBase),

        child: Consumer<MoviesProvider>(

            builder: (key, provider , child ){

              return provider.errorMessage == "" ?

              ListView.builder(
                  itemCount: provider.movies.length,
                  itemBuilder: (BuildContext context, int index){

                    Movie m = provider.movies[index];

                    return Container(
                      decoration: circularEdges(10, 10, 10, 10, Colors.white),
                      margin: EdgeInsets.symmetric(horizontal: SizeConfig.kPadding , vertical: SizeConfig.kPadding/2),


                      child: ListTile(


                        onTap: ()=> seeDetails( context , m.imdbID),

                        leading: m.poster != "N/A" ? Image.network(m.poster) : Image.network(noImageUrl),
                        title:   Text(m.title,style: Theme.of(context).textTheme.headline2,),
                        subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Type: "+ m.type),
                            Text("Year: "+ m.year),
                          ],
                        ),
                      ),
                    );

                  }
              )

                  :

              Container(
                padding: EdgeInsets.all(SizeConfig.kPadding),
                child: Text(provider.errorMessage,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline4,),
              );

            })
    );
  }





  void seeDetails(BuildContext context,String imdbID){

    Provider.of<MovieDetailsProvider>(context,listen:false).updateID(imdbID);
    Navigator.pushNamed(context, "/movieDetails");

  }



}
