import 'package:flutter/material.dart';

class StoryBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .200,
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(8),
      child: Stack(
        children: [
          // الخلفية
          Positioned.fill(
            child: Image.asset(
              "assets/images/facebookStory.jpg",
              fit: BoxFit.fill,
            ),
          ),

          // الأيقونة
          Positioned(
            top: 10,
            left: 5,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blueAccent,
              ),
              child: Icon(Icons.person, color: Colors.white, size: 30),
            ),
          ),

          // اسم الـ Owner
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              "pop",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
