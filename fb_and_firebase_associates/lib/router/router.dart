import 'package:auto_route/annotations.dart';
import 'package:fb_and_firebase_associates/deep_link/presentation/post_detail_page.dart';
import 'package:fb_and_firebase_associates/deep_link/presentation/post_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: PostPage, initial: true),
    AutoRoute(page: PostDetailPage, path: '/posts/:id'),
  ],
)
class $AppRouter {}
