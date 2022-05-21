import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_assignment/controllers/home_controller.dart';
import 'package:youtube_assignment/widgets/item_card.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController _homeController = Get.find();
    final _searchController = TextEditingController();
    ScrollController _scrollController = ScrollController();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Card(
                  child: ListTile(
                    title: Row(
                      children: [
                        const Icon(Icons.search),
                        Expanded(
                          child: TextFormField(
                            controller: _searchController,
                            cursorColor: Colors.red,
                            decoration: const InputDecoration(
                              hintText: 'Search by Title',
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                              fillColor: Colors.white,
                              isDense: true,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(22),
                                ),
                              ),
                            ),
                            autofocus: true,
                            onChanged: (query) =>
                                _homeController.fetchVideoList(
                                    titleName: _searchController.text),
                          ),
                        ),
                      ],
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () async {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Obx(() {
                if (_homeController.searchedVideoList.isEmpty) {
                  print(_homeController.searchedVideoList.length);
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "😢",
                        style: TextStyle(fontSize: 72),
                      ),
                      Text(
                        "No Videos Found!! Please Search Again",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  );
                }
                return ListView.builder(
                  itemCount: _homeController.searchedVideoList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ItemCard(
                        video: _homeController.searchedVideoList[index],
                      ),
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
