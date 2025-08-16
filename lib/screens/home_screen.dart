import 'package:abanoub_assiment/custom%20widgets/post_builder.dart';
import 'package:abanoub_assiment/custom%20widgets/story_builder.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "Home Screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blueAccent),
      body: Column(
        children: [
          //story
          Expanded(
            flex: 1,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,

                itemBuilder: (context, index) => StoryBuilder(),
                itemCount: 10,
              ),
            ),
          ),
          //posts
          Expanded(
            flex: 5,
            child: ListView.builder(
              itemBuilder: (context, index) => PostBuilder(),
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
