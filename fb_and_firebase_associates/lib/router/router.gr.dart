// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../deep_link/presentation/post_detail_page.dart' as _i4;
import '../deep_link/presentation/post_page.dart' as _i3;
import '../login/core/presentation/all_login_page.dart' as _i6;
import '../login/fb_login/presentation/fb_login_page.dart' as _i7;
import '../login/google_login/presentation/google_login_page.dart' as _i8;
import '../splash_screen.dart' as _i5;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    PostRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.PostPage();
        }),
    PostDetailRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final pathParams = data.pathParams;
          final args = data.argsAs<PostDetailRouteArgs>(
              orElse: () =>
                  PostDetailRouteArgs(postId: pathParams.optInt('id')));
          return _i4.PostDetailPage(key: args.key, postId: args.postId);
        }),
    SplashScreen.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.SplashScreen();
        }),
    AllLoginRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<AllLoginRouteArgs>();
          return _i6.AllLoginPage(id: args.id, key: args.key);
        }),
    FbLoginRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.FbLoginPage();
        }),
    GoogleLoginRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i8.GoogleLoginPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(PostRoute.name, path: '/post-page'),
        _i1.RouteConfig(PostDetailRoute.name, path: '/posts/:id'),
        _i1.RouteConfig(SplashScreen.name, path: '/'),
        _i1.RouteConfig(AllLoginRoute.name, path: '/all-login-page'),
        _i1.RouteConfig(FbLoginRoute.name, path: '/fb-login-page'),
        _i1.RouteConfig(GoogleLoginRoute.name, path: '/google-login-page')
      ];
}

class PostRoute extends _i1.PageRouteInfo {
  const PostRoute() : super(name, path: '/post-page');

  static const String name = 'PostRoute';
}

class PostDetailRoute extends _i1.PageRouteInfo<PostDetailRouteArgs> {
  PostDetailRoute({_i2.Key? key, int? postId})
      : super(name,
            path: '/posts/:id',
            args: PostDetailRouteArgs(key: key, postId: postId),
            rawPathParams: {'id': postId});

  static const String name = 'PostDetailRoute';
}

class PostDetailRouteArgs {
  const PostDetailRouteArgs({this.key, this.postId});

  final _i2.Key? key;

  final int? postId;
}

class SplashScreen extends _i1.PageRouteInfo {
  const SplashScreen() : super(name, path: '/');

  static const String name = 'SplashScreen';
}

class AllLoginRoute extends _i1.PageRouteInfo<AllLoginRouteArgs> {
  AllLoginRoute({required int id, _i2.Key? key})
      : super(name,
            path: '/all-login-page', args: AllLoginRouteArgs(id: id, key: key));

  static const String name = 'AllLoginRoute';
}

class AllLoginRouteArgs {
  const AllLoginRouteArgs({required this.id, this.key});

  final int id;

  final _i2.Key? key;
}

class FbLoginRoute extends _i1.PageRouteInfo {
  const FbLoginRoute() : super(name, path: '/fb-login-page');

  static const String name = 'FbLoginRoute';
}

class GoogleLoginRoute extends _i1.PageRouteInfo {
  const GoogleLoginRoute() : super(name, path: '/google-login-page');

  static const String name = 'GoogleLoginRoute';
}
