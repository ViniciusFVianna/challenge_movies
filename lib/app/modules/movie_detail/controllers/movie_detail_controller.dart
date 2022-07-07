import 'package:get/get.dart';

import '../../../data/repository/i_movies_repository.dart';

class MovieDetailController extends GetxController {
  final IMoviesRepository repository;
  MovieDetailController(this.repository);

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
