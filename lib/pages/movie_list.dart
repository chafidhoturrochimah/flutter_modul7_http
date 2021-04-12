import 'package:flutter/material.dart';
import 'package:flutter_modul7_http/pages/movie_detail.dart';
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
      backgroundColor: Colors.purple[50],
      appBar: AppBar(
        title: Text(
          "Popular Movies",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Nunito',
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
        elevation: 5.0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Colors.pink[200],
                Colors.blue
              ]
            )          
          ),
        ),
      ),
      
      // listview dan card berdasarkan data dari initialize
      body: ListView.builder(
        itemCount : (this.moviesCount == null) ? 0 : this.moviesCount,
        itemBuilder: (context, int position) {
          return Card(
            color: Colors.white,
            elevation: 2.0,
            child: ListTile(
              title: Text(
                movies[position].title,
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.bold
                ),
              ),
              //menambahkan gambar dari response api ke listview
              leading: Image.network('https://image.tmdb.org/t/p/w500/' +  movies[position].posterPath),
              subtitle: Text(
                'Rating = ' + movies[position].voteAverage.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Nunito'
                ),
              ),
              trailing: GestureDetector(
                child: Icon(
                  Icons.arrow_right_rounded,
                  color: Colors.red[200],
                ),
                //Untuk membuat perpindahan dari movie list ke movie detail buatlah onTap event
                onTap: (){
                  MaterialPageRoute route = MaterialPageRoute(
                    builder: (_) => MovieDetail(movies[position])
                  );
                  Navigator.push(context, route);
                },
              ),
            ),
          );
        },
      ),
    );
  }
}