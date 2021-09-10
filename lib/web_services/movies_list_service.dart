import 'dart:convert';

import 'package:dio/dio.dart';
import '../global_resources.dart';



class MovieListService{


  static late Response<String> _res;



  static Future<Map<String,dynamic>> searchMovies(String searchKeyword) async {

    Dio dio = Dio();


    try {

        _res = await dio.post(

        "${baseUrl}s=$searchKeyword",

        options: Options(
            followRedirects: false,
            validateStatus: (status) {
              return status! < 500;
            }),

      );



       if(_res.data!.contains("False") || _res.data!.contains("Error")){

         return {"status" : 404, "response" : jsonDecode(_res.data!)["Error"] };

       }else{

         return {
           "response": _res.data,
           "status": _res.statusCode
         };

       }





    } on DioError catch (error) {


      if(error.message.contains("101")){

        return {"response":"Please turn on Wifi or Mobile Data", "status": 101 };
      }
      else if(error.message.contains("110")){

        return {"response":"Poor Internet, Please try again", "status": 110 };

      }else{
        return {"response":error.message, "status": "404" };
      }

    }



  }


}


