import 'package:dio/dio.dart';
import 'package:inwatch/app/domain/entities/movie_entity.dart';

class MovieRepository {
  final String apiKey = '55073d00';
  final String endpoint = 'http://www.omdbapi.com';
  final Dio client = Dio();

  MovieRepository() {
    this.client.options = BaseOptions(baseUrl: this.endpoint, queryParameters: {
      'apiKey': this.apiKey,
      'plot': 'full',
    });
  }

  Future<MovieModel> searchByTitle(String title) async {
    Response<dynamic> res = await client.get('?t=$title');
    return MovieModel.fromJson(res.data);
  }
}
