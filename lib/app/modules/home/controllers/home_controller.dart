import 'package:flutter/widgets.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:get/get.dart';

import '../../../data/models/movie.dart';
import '../../../data/models/query_paginated.dart';
import '../../../data/repository/movies_repository.dart';
import '../../../utilities/app_colors.dart';

class HomeController extends GetxController {
  final repository = Get.put(MoviesRepository());

  Rx<TextEditingController> searchController = TextEditingController().obs;

  Rx<QueryPaginated<Movie>> queryPaginated = QueryPaginated<Movie>().obs;

  @override
  void onInit() {
    fetchMovies();
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
  Future<void> fetchMovies({VoidCallback? onSuccess}) async {
    final _response = await repository.getMovies();
    
    _response.fold((l) => Get.showSnackbar(GetSnackBar(
      icon: Icon(
        FeatherIcons.info,
        color: AppColors.colorWhite,
      ),
      message: l.error.toString(),
      backgroundColor: AppColors.colorWarning,
      duration: Duration(seconds: 3),
      snackPosition: SnackPosition.BOTTOM,
    )), (r){

      print(r);

      if (onSuccess != null) onSuccess();
    });
  }

}
