import 'package:challenge_movies/app/utilities/constants_strings.dart';
import 'package:get/get.dart';

class MoviesProvider extends GetConnect{
  Future<Response> getMovies() async {
    String url = ConstantsStrings.discoverMoviesEndPoint;
    Map<String, dynamic> query = {
    'api_key': ConstantsStrings.apiKey,
    'language': 'pt-BR'
    };

    return get(url, query: query);
  }
}