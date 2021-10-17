import 'package:dio/dio.dart';
import 'package:inwatch/app/domain/entities/movie_entity.dart';

class MovieRepository {
  String APIKEY = '55073d00';
  String endpoint = 'http://www.omdbapi.com';
  Dio client = Dio();

  MovieRepository() {
    this.client.options = BaseOptions(baseUrl: this.endpoint, queryParameters: {
      'apiKey': this.APIKEY,
      'plot': 'full',
    });
  }

  Future<MovieModel> searchByTitle(String title) async {
    Response<dynamic> res = await client.get('?t=$title');
    return MovieModel.fromJson(res.data);
  }
}
