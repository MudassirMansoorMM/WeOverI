class MovieDetails {
  late String title;
  late String year;
  late String rated;
  late String released;
  late String runtime;
  late String genre;
  late String director;
  late String writer ;
  late String actors ;
  late String plot;
  late String language;
  late String country ;
  late String awards ;
  late String poster;
  late List<Ratings> ratings;
  late String metascore;
  late String imdbRating;
  late String imdbVotes;
  late String imdbID;
  late String type;
  late String dVD;
  late String boxOffice;
  late String production;
  late String website;
  late String response;

  MovieDetails({
        required this.title,
        required this.year,
        required this.rated,
        required this.released,
        required this.runtime,
        required this.genre,
        required this.director,
        required this.writer,
        required this.actors,
        required this.plot,
        required this.language,
        required this.country,
        required this.awards,
        required this.poster,
        required this.ratings,
        required this.metascore,
        required this.imdbRating,
        required this.imdbVotes,
        required this.imdbID,
        required this.type,
        required this.dVD,
        required this.boxOffice,
        required this.production,
        required this.website,
        required this.response

      });

  MovieDetails.fromJson(Map<String, dynamic> json) {
    title = json['Title'];
    year = json['Year'];
    rated = json['Rated'];
    released = json['Released'];
    runtime = json['Runtime'];
    genre = json['Genre'];
    director = json['Director'];
    writer = json['Writer'];
    actors = json['Actors'];
    plot = json['Plot'];
    language = json['Language'];
    country = json['Country'];
    awards = json['Awards'];
    poster = json['Poster'];
    if (json['Ratings'] != null) {
      ratings = <Ratings>[];
      json['Ratings'].forEach((v) {
        ratings.add(Ratings.fromJson(v));
      });
    }
    metascore = json['Metascore'];
    imdbRating = json['imdbRating'];
    imdbVotes = json['imdbVotes'];
    imdbID = json['imdbID'];
    type = json['Type'];
    dVD = json['DVD'];
    boxOffice = json['BoxOffice'];
    production = json['Production'];
    website = json['Website'];
    response = json['Response'];
  }


}

class Ratings {
  late String source;
  late String value;

  Ratings({
    required this.source,
    required this.value
  });

  Ratings.fromJson(Map<String, dynamic> json) {
    source = json['Source'];
    value = json['Value'];
  }


}