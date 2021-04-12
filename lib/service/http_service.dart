import 'dart:io';
import 'package:http/http.dart' as http;

class HttpService {
  final String apiKey = '972de93ab677d7c6d42ed93e088351ab';
  final String baseUrl = 'http://api.themoviedb.org/3/movie/popular?api_key=';

  //function ini untuk mengambil response dari server themoviedb.org
  Future<String> getPopularMovies() async {
    final String uri = baseUrl + apiKey;

    http.Response result = await http.get(Uri.parse(uri));
    if (result.statusCode == HttpStatus.ok) {
      print("Sukses");
      String response = result.body;
      return response;
    } else {
      print("Fail");
      return null;
    }
  }
}