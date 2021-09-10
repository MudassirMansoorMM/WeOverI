import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:we_over_i/provider/movies_provider.dart';

import '../../../config.dart';
import '../../../global_resources.dart';



class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}




class _SearchBarState extends State<SearchBar> {

  Color buttonColor = kRed;

  @override
  Widget build(BuildContext context) {

    return Container(

      padding: EdgeInsets.all(SizeConfig.kPadding),

      child: TextFormField(

        controller: Provider.of<MoviesProvider>(context,listen: false).getFieldController,

        decoration:   InputDecoration(

          fillColor: Colors.white,

          filled: true,

          contentPadding: const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),

          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(100)),
            borderSide: BorderSide(color: Colors.white),
          ),

          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(100)),
            borderSide: BorderSide(color: Colors.white),
          ),

          border: InputBorder.none,

          suffixIcon: GestureDetector(
            onTap: ()=>search(context),
            child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                decoration: circularEdges(100, 100, 100, 100, buttonColor),
                padding: const EdgeInsets.symmetric(horizontal: 30),
                margin: const EdgeInsets.all(2),
                child: const Icon(Icons.search_rounded, color: Colors.white,)),
          ),

          hintText: "Search e.g 'Batman'",

        ),

      ),
    );
  }


  void search(BuildContext context){

    /// Some animation for the Button
    setState(() {
      buttonColor = Colors.black;
    });

    Future.delayed(const Duration(milliseconds: 600),updateColor);

    Provider.of<MoviesProvider>(context,listen: false).getMovies();


  }

  Future<void> updateColor()async {
    setState(() {
      buttonColor = kRed;
    });
  }

}
