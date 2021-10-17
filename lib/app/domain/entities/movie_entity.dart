class MovieModel {
  late String title;
  late String year;
  late String rated;
  late String released;
  late String runtime;
  late String genre;
  late String director;
  late String writer;
  late String actors;
  late String plot;
  late String language;
  late String country;
  late String awards;
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

  MovieModel(
      {required this.title,
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
      required this.response});

  MovieModel.fromJson(Map<String, dynamic> json) {
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
    if (json['Ratings'] != null) {
      List<Ratings> ratings = [];
      json['Ratings'].forEach((v) {
        ratings.add(new Ratings.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Title'] = this.title;
    data['Year'] = this.year;
    data['Rated'] = this.rated;
    data['Released'] = this.released;
    data['Runtime'] = this.runtime;
    data['Genre'] = this.genre;
    data['Director'] = this.director;
    data['Writer'] = this.writer;
    data['Actors'] = this.actors;
    data['Plot'] = this.plot;
    data['Language'] = this.language;
    data['Country'] = this.country;
    data['Awards'] = this.awards;
    data['Poster'] = this.poster;
    if (this.ratings != null) {
      data['Ratings'] = this.ratings.map((v) => v.toJson()).toList();
    }
    data['Metascore'] = this.metascore;
    data['imdbRating'] = this.imdbRating;
    data['imdbVotes'] = this.imdbVotes;
    data['imdbID'] = this.imdbID;
    data['Type'] = this.type;
    data['DVD'] = this.dVD;
    data['BoxOffice'] = this.boxOffice;
    data['Production'] = this.production;
    data['Website'] = this.website;
    data['Response'] = this.response;
    return data;
  }
}

class Ratings {
  String source;
  String value;

  Ratings({required this.source, required this.value});

  factory Ratings.fromJson(Map<String, dynamic> json) {
    return Ratings(
      source: json['Source'] ?? json['Source'],
      value: json['Value'] ?? json['Value'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Source'] = this.source;
    data['Value'] = this.value;
    return data;
  }
}
