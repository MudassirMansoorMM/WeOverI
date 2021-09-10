import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'components/details_body.dart';
import '../../global_resources.dart';
import '../../models/movie_details_model.dart';
import '../../provider/movie_details_provider.dart';


class MovieDetailsScreen extends StatelessWidget {

  const MovieDetailsScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: kBase,

      body: Consumer<MovieDetailsProvider>(

          builder: (key, provider, child){


            /// if the web service has returned successfully with no error message
            if(provider.loaded && provider.errorMessage == ""){

              MovieDetails details = provider.details;

              return Body(details: details);

              /// Web service has returned a response but with error
            }else if(provider.loaded && provider.errorMessage != ""){

              return Center(child: Text(provider.errorMessage));

              /// Web service is in progress
            }else{

              return Center(child: CircularProgressIndicator(color: kRed,),);

            }




          }
      ),

    );


  }






}
