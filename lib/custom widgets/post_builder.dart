import 'package:abanoub_assiment/custom%20widgets/reaction_builder.dart';
import 'package:flutter/material.dart';

class PostBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
                child: Icon(Icons.person, size: 60, color: Colors.white),
              ),
              SizedBox(width: 15),
              Column(
                children: [
                  Text("Abanoub", style: TextStyle(fontSize: 25)),
                  Row(
                    children: [
                      Text("3h", style: TextStyle(fontSize: 18)),
                      SizedBox(width: 5),
                      Icon(Icons.public),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Text(
            "El Bob byedahreg el-tamaseeh",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("100"),
                SizedBox(width: 13),
                Image.asset("assets/images/like.jpg", width: 60),
                Spacer(),
                Text("100 Comments"),
              ],
            ),
          ),
          Container(color: Colors.black, width: double.infinity, height: 1),
          Row(
            children: [
              ReactionBuilder(
                imageName: "singleLike.jpg",
                reactionName: "like",
              ),
              ReactionBuilder(
                imageName: "comment.jpg",
                reactionName: "comment",
              ),
              ReactionBuilder(imageName: "share.png", reactionName: "share"),
            ],
          ),
          Container(color: Colors.black, width: double.infinity, height: 1),
        ],
      ),
    );
  }
}
