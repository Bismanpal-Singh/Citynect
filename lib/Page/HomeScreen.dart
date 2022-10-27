import 'package:cityride/models/post.dart';
import 'package:flutter/material.dart';
import '../widgets/post_widget.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          children: <Widget>[
      for(Post post in posts) Column(
        children: <Widget>[
        PostWidget(post: post),
       ],
    ),
        ]
      ),
    );
  }
}
