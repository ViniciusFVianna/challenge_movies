import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/movie_detail_controller.dart';

class MovieDetailView extends GetView<MovieDetailController> {
  const MovieDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MovieDetailView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MovieDetailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
