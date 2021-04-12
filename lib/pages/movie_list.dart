import 'package:flutter/material.dart';
import 'package:flutter_modul7_http/service/http_service.dart';

class MovieList extends StatefulWidget {
  @override
  _MovieListState createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  //menambahkan variabel service
  // String result ="";
  // HttpService service;
  //Update inisialisasi variabel pada class movieliststate
  int moviesCount;
  List movies;
  HttpService service;

  //Tambahkan method initialize() pada class movieliststate
  Future initialize() async {
    movies = [];
    movies = await service.getPopularMovies();
    setState(() {
      moviesCount = movies.length;
      movies = movies;
    });
  }

  //method override init state agar permintaan ke rest api dapat 
  //dilakukan ketika state di inisialisasi.
  @override
  void initState(){
    service = HttpService();
    //Tambahkan function initialize pada initState 
    initialize();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Popular Movies"),
      ),
      
      // listview dan card berdasarkan data dari initialize
      body: ListView.builder(
        itemCount : (this.moviesCount == null) ? 0 : this.moviesCount,
        itemBuilder: (context, int position) {
          return Card(
            color: Colors.white,
            elevation: 2.0,
            child: ListTile(
              title: Text(movies[position].title),
              subtitle: Text(
                'Rating = ' + movies[position].voteAverage.toString(),
              ),
            ),
          );
        },
      ),
    );
  }
}