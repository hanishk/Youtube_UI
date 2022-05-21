import 'package:flutter/material.dart';
import 'package:youtube_assignment/models/data.dart';
import 'package:youtube_assignment/views/homepage/home_sliver_appbar.dart';
import 'package:youtube_assignment/widgets/item_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const CustomSliverAppBar(),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ItemCard(video: videos[index]);
              },
              childCount: videos.length,
            ),
          ),
        ],
      ),
    );
  }
}
