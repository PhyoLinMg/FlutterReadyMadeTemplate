import 'package:auto_route/auto_route.dart';
import 'package:fb_and_firebase_associates/deep_link/infrastructure/deep_link_repository.dart';
import 'package:fb_and_firebase_associates/deep_link/infrastructure/post_model.dart';
import 'package:fb_and_firebase_associates/router/router.gr.dart';
import 'package:flutter/material.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  void initState() {
    DeepLinkRepository().initDynamicLinks(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post Page"),
      ),
      body: Column(
        children: [
          Text("This is for Dynamic Link purpose"),
          ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  AutoRouter.of(context)
                      .push(PostDetailRoute(postId: posts[index].id));
                },
                title: Text("${posts[index].id}: ${posts[index].description}"),
              );
            },
            itemCount: posts.length,
          ),
        ],
      ),
    );
  }
}
