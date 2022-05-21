import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:youtube_assignment/constants/image_paths.dart';
import 'package:youtube_assignment/controllers/home_controller.dart';
import 'package:youtube_assignment/views/homepage/home_search.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _homeController = Get.put(HomeController());

    return Obx(() {
      return SliverAppBar(
          leadingWidth: 100,
          floating: true,
          backgroundColor:
              _homeController.isDark.value ? Colors.white : Colors.black,
          actionsIconTheme: IconThemeData(
            color: _homeController.isDark.value ? Colors.black : Colors.white,
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Image.asset(ytLogo),
          ),
          actions: [
            IconButton(
              onPressed: () {
                _homeController.isDark.value = !_homeController.isDark.value;
                _homeController.changeTheme(_homeController.isDark.value);
                print(_homeController.isDark.value);
              },
              icon: const Icon(Icons.wb_sunny_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.cast),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_outlined),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const HomeSearch()));
              },
              icon: const Icon(Icons.search),
            ),
            IconButton(
              iconSize: 40,
              onPressed: () {},
              icon: const CircleAvatar(
                foregroundImage: AssetImage(profileImage),
              ),
            ),
          ]);
    });
  }
}
