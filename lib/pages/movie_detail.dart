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
          'Overview',
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
                  movie.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0
                  ),
                ),
                padding: EdgeInsets.only(
                  left: 16, 
                  right: 16
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Rate = ' + movie.voteAverage.toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0
                      ),
                    ),
                  ],
                ),
                padding: EdgeInsets.only(
                  left: 16, 
                  right: 16
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text(
                  movie.overview,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Nunito'
                  ),
                ),
                padding: EdgeInsets.only(
                  left: 16, 
                  right: 16
                ),
              ),
              
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  gradient: LinearGradient(
                    // Where the linear gradient begins and ends
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    // Add one stop for each color. Stops should increase from 0 to 1
                    //stops: [0.1, 0.9],
                    colors: <Color>[
                      Colors.pink[200],
                      Colors.blue
                    ]
                  ),
                ),
                child: SizedBox(
                  width: double.infinity,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    child: Text(
                      "Watch Trailer",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Nunito',
                        fontSize: 14,
                      ),
                    ),
                    textColor: Colors.white,
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60.0)
                    ),
                    onPressed: ()  {
                      
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}