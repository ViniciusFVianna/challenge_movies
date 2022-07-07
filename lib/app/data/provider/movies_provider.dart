import 'package:challenge_movies/app/utilities/constants_strings.dart';
import 'package:get/get.dart';

class MoviesProvider extends GetConnect{
  Future<Response> getMovies() async {
    String url = ConstantsStrings.discoverMoviesEndPoint.replaceAll(':api_key', ConstantsStrings.apiKey);
    final header = {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer ${ConstantsStrings.accessToken}'
    };

    print(url);

    return await get(url, headers: header);
  }

  Future<Response> getMovie(String movieId) async {
    String url = ConstantsStrings.movieEndPoint
        .replaceAll(':api_key', ConstantsStrings.apiKey)
        .replaceAll(':movie_id', movieId);
    final header = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer ${ConstantsStrings.accessToken}'
    };

    print(url);

    return await get(url, headers: header);
  }
}