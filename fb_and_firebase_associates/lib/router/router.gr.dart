// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../deep_link/presentation/post_detail_page.dart' as _i4;
import '../deep_link/presentation/post_page.dart' as _i3;

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
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(PostRoute.name, path: '/'),
        _i1.RouteConfig(PostDetailRoute.name, path: '/posts/:id')
      ];
}

class PostRoute extends _i1.PageRouteInfo {
  const PostRoute() : super(name, path: '/');

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
