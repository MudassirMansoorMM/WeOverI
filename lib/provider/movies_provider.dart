import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:we_over_i/web_services/movies_list_service.dart';
import '../models/movie_model.dart';



class MoviesProvider extends ChangeNotifier{


  final TextEditingController _searchField =  TextEditingController();
  List<Movie> _movies = [];
  String errorMessage = "";


  TextEditingController get getFieldController { return _searchField; }
  List<Movie> get movies { return _movies; }




  void getMovies()async{

      _movies = [];

     if(_searchField.text.length < 3){

       errorMessage = "Search keyword must be at least 3 characters long.";

     }else{

       Map<String,dynamic> req = await MovieListService.searchMovies(_searchField.text);

       if(req["status"] == 200){

         List<dynamic> rawList = jsonDecode(req["response"])["Search"];

         for (var rawMovie in rawList) {
           _movies.add(Movie.fromJson(rawMovie));
         }

         errorMessage = "";
         _searchField.text = "";

       }else{
         errorMessage = req["response"]+ " Try again.";
       }


     }



     notifyListeners();

  }


}