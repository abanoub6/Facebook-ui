import 'package:flutter/material.dart';

class ReactionBuilder extends StatelessWidget {
  String imageName;
  String reactionName;
  ReactionBuilder({required this.imageName, required this.reactionName});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/$imageName", height: 20, width: 20),
          SizedBox(width: 5),
          Text(reactionName),
        ],
      ),
    );
  }
}
