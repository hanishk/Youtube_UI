import 'package:flutter/material.dart';
import 'package:youtube_assignment/views/home/home.dart';
import 'package:youtube_assignment/widgets/buttons.dart';

class Create extends StatelessWidget {
  const Create({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: HomeButton(
          label: 'Home',
          onTap: () {
            Navigator.pushAndRemoveUntil<dynamic>(
              context,
              MaterialPageRoute<dynamic>(
                builder: (BuildContext context) => const Home(),
              ),
              (route) =>
                  false, //if you want to disable back feature set to false
            );
          },
        ),
      ),
    );
  }
}
