import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:we_over_i/models/movie_details_model.dart';
import 'package:we_over_i/screens/movie_details_screen/movie_details.dart';
import 'package:we_over_i/web_services/movie_details_service.dart';
import 'package:we_over_i/web_services/movies_list_service.dart';



class MovieDetailsProvider extends ChangeNotifier{


  late String _id = "";
  late MovieDetails _details;
  String errorMessage = "";
  bool loaded = false;

  MovieDetails get details { return _details; }


  void updateID(String imdbID){

    loaded = false;
    _id = imdbID;
    notifyListeners();
    getMovies();

  }


  void getMovies()async{


      Map<String,dynamic> req = await MovieDetailsService.searchMovie(_id);

      if(req["status"] == 200){

        _details = MovieDetails.fromJson(jsonDecode(req["response"]));

        errorMessage = "";
        loaded = true;

      }else{

        loaded = true;
        errorMessage = req["response"]+ " Try again.";

      }


      notifyListeners();

  }


}