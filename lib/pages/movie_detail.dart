import 'package:flutter/material.dart';
import 'package:flutter_modul7_http/models/movie.dart';

class MovieDetail extends StatelessWidget {
  final Movie movie;
  final String imgPath = 'https://image.tmdb.org/t/p/w500/';

  MovieDetail(this.movie);

  @override
  Widget build(BuildContext context) {
    String path;
    
    if(movie.posterPath != null){
      path = imgPath + movie.posterPath;
    } else {
      path = 'https://images.freeimages.com/images/large-previews/5eb/movie-clapboard-1184339.jpg';
    }

    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        title: Text(
          movie.title,
          style: TextStyle(
            fontFamily: 'Nunito',
            fontWeight: FontWeight.bold
          ),
        ),
        elevation: 5.0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: <Color>[
                Colors.pink[200],
                Colors.blue
              ]
            )          
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                height: height / 1.5,
                child: Image.network(path),
              ),
              Container(
                child: Text(
                  movie.overview,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontFamily: 'Nunito'
                  ),
                ),
                padding: EdgeInsets.only(
                  left: 16, 
                  right: 16
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}