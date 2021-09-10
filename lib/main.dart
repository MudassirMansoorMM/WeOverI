import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:we_over_i/provider/movie_details_provider.dart';
import 'package:we_over_i/screens/home_screen/home.dart';
import 'package:we_over_i/screens/movie_details_screen/movie_details.dart';
import 'provider/movies_provider.dart';
import 'styling.dart';
import 'config.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
        builder: (context,constraints){
        return OrientationBuilder(

          builder: (context, orientation){

            SizeConfig().init(constraints,orientation);

            return MultiProvider(
                providers: [
                  ChangeNotifierProvider(create: (_) => MoviesProvider()),
                  ChangeNotifierProvider(create: (_) => MovieDetailsProvider()),
                ],
                child:MaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: 'Flutter Demo',
                  theme: AppTheme.lightTheme,
                  initialRoute: '/',
                  routes: {
                    '/': (context) => const HomeScreen(),
                    '/movieDetails': (context) => const MovieDetailsScreen(),
                  },
                )

            );
          },
        );
      },
    );
  }
}