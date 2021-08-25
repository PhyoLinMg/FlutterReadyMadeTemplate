import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';

class DeepLinkRepository {
  Future<void> initDynamicLinks(BuildContext context,
      {required Function(String?) goTo}) async {
    try {
      final PendingDynamicLinkData? data =
          await FirebaseDynamicLinks.instance.getInitialLink();
      final Uri? deepLink = data?.link;

      if (deepLink != null) {
        print("getInitialLink DeepLink Path" + deepLink.path);
        print(
            "getInitialLink DeepLink Id is ${deepLink.queryParameters["id"]}");
        goTo(deepLink.queryParameters["id"]);
      }

      FirebaseDynamicLinks.instance.onLink(
          onSuccess: (PendingDynamicLinkData? dynamicLink) async {
        final Uri? deepLink = dynamicLink?.link;
        print("deeplink found");
        if (deepLink != null) {
          print("onLink DeepLink Path" + deepLink.path);
          print("onLink DeepLink Id is ${deepLink.queryParameters["id"]}");

          goTo(deepLink.queryParameters["id"]);
        }
      }, onError: (OnLinkErrorException e) async {
        print("deeplink error");
        print(e.message);
      });
    } catch (e) {
      print(e.toString());
    }
  }

  //minimumVersion is the version of your app
  Future<String> createDynamicLink(int id) async {
    final DynamicLinkParameters parameters = DynamicLinkParameters(
      uriPrefix: 'https://linmg.page.link',
      link: Uri.parse('https://linmg.com/post?id=$id'),
      androidParameters: AndroidParameters(
        packageName: 'com.linmg.fb_and_firebase_associates',
        minimumVersion: 0,
      ),
      dynamicLinkParametersOptions: DynamicLinkParametersOptions(
        shortDynamicLinkPathLength: ShortDynamicLinkPathLength.short,
      ),
      socialMetaTagParameters: SocialMetaTagParameters(),
      iosParameters: IosParameters(
        bundleId: '',
        minimumVersion: '0',
      ),
    );

    final ShortDynamicLink shortDynamicLink = await parameters.buildShortLink();
    return shortDynamicLink.shortUrl.toString();
  }
}