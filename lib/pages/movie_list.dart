import 'package:flutter/material.dart';
import 'package:flutter_modul7_http/service/http_service.dart';

class MovieList extends StatefulWidget {
  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  //menambahkan variabel service
  String result ="";
  HttpService service;

  //method override init state agar permintaan ke rest api dapat 
  //dilakukan ketika state di inisialisasi.
  @override
  void initState(){
    service = HttpService();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    service.getPopularMovies().then((value) => {
      setState(() {
        result = value;
      })
    });
    return Scaffold(
      appBar: AppBar(
        title: Text("Popular Movie"),
      ),
      
      body: Container(
        child: Text(result),
      ),
    );
  }
}