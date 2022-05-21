import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:youtube_assignment/models/data.dart';

class HomeController extends GetxController {
  RxBool isDark = false.obs;
  RxList<VideoModel> videoList = <VideoModel>[].obs;
  RxList<VideoModel> searchedVideoList = <VideoModel>[].obs;

  Future<void> fetchVideoList({required String titleName}) async {
    List<VideoModel> tempProductList = [];

    tempProductList = videos
        .where((element) => element.title
            .toString()
            .toLowerCase()
            .contains(titleName.toLowerCase()))
        .toList();

    searchedVideoList.value = tempProductList;
  }

  void changeTheme(bool value) {
    if (value) {
      isDark(true);
      Get.changeTheme(ThemeData(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          selectedIconTheme: IconThemeData(color: Colors.black),
        ),
      ));
    } else {
      isDark(false);
      Get.changeTheme(ThemeData(
        brightness: Brightness.dark,
        bottomNavigationBarTheme:
            const BottomNavigationBarThemeData(selectedItemColor: Colors.white),
      ));
    }
  }
}
