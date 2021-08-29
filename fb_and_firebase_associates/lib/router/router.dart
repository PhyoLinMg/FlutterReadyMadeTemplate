import 'package:auto_route/annotations.dart';
import 'package:fb_and_firebase_associates/deep_link/presentation/post_detail_page.dart';
import 'package:fb_and_firebase_associates/deep_link/presentation/post_page.dart';
import 'package:fb_and_firebase_associates/splash_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: PostPage),
    AutoRoute(page: PostDetailPage, path: '/posts/:id'),
    AutoRoute(page: SplashScreen, initial: true),
  ],
)
class $AppRouter {}
