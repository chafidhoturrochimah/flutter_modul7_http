import 'dart:convert';
import 'dart:io';
import 'package:flutter_modul7_http/models/movie.dart';
import 'package:http/http.dart' as http;

class HttpService {
  final String apiKey = '972de93ab677d7c6d42ed93e088351ab';
  final String baseUrl = 'http://api.themoviedb.org/3/movie/popular?api_key=';

  //function ini untuk mengambil response dari server themoviedb.org
  //update 
  Future<List> getPopularMovies() async {
    final String uri = baseUrl + apiKey;

    http.Response result = await http.get(Uri.parse(uri));
    if (result.statusCode == HttpStatus.ok) {
      print("Sukses");
      //update model
      final jsonResponse = json.decode(result.body);
      final moviesMap = jsonResponse['results'];
      List movies = moviesMap.map((i) => Movie.fromJson(i)).toList();
      return movies;
    } else {
      print("Fail");
      return null;
    }
  }
}