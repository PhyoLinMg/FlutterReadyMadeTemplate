import 'package:auto_route/annotations.dart';
import 'package:fb_and_firebase_associates/deep_link/infrastructure/deep_link_repository.dart';
import 'package:fb_and_firebase_associates/deep_link/infrastructure/post_model.dart';
import 'package:flutter/material.dart';

class PostDetailPage extends StatelessWidget {
  final int? postId;
  PostDetailPage({Key? key, @PathParam('id') this.postId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post Detail"),
      ),
      body: Column(
        children: [
          Text(
            postId.toString(),
            style: Theme.of(context).textTheme.headline2,
          ),
          Text(
            posts.firstWhere((element) => element.id == postId).description,
            style: Theme.of(context).textTheme.caption,
          ),
          ElevatedButton(
            onPressed: () {
              DeepLinkRepository().createDynamicLink(postId!);
            },
            child: Text("Share the post"),
          ),
        ],
      ),
    );
  }
}
