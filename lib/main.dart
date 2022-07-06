import 'package:challenge_movies/app/utilities/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/routes/app_pages.dart';

void main() async {
  await GetStorage.init();

  runApp(
    GetMaterialApp(
      title: "Challenge Movies",
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.colorPrimary,
      ),
    ),
  );
}
