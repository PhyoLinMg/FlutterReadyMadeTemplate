import 'package:auto_route/auto_route.dart';
import 'package:fb_and_firebase_associates/deep_link/infrastructure/deep_link_repository.dart';
import 'package:fb_and_firebase_associates/deep_link/infrastructure/post_model.dart';
import 'package:fb_and_firebase_associates/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> with TickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    DeepLinkRepository().initDynamicLinks(context, goTo: (postId) {
      AutoRouter.of(context).push(
        PostDetailRoute(
          postId: int.parse(postId!),
        ),
      );
    });
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
          LottieBuilder.asset(
            'assets/lottie/linmg_dev_animated.json',
            onLoaded: (composition) {
              _animationController
                ..duration = composition.duration
                ..repeat();
            },
            frameRate: FrameRate.max,
            height: 100,
            controller: _animationController,
          ),
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


