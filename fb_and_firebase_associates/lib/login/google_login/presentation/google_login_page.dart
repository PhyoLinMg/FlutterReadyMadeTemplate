import 'package:fb_and_firebase_associates/login/core/presentation/social_sign_in_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class GoogleLoginPage extends ConsumerStatefulWidget {
  const GoogleLoginPage({Key? key}) : super(key: key);

  @override
  _GoogleLoginPageState createState() => _GoogleLoginPageState();
}

class _GoogleLoginPageState extends ConsumerState<GoogleLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SocialSignInButton(
          buttonText: "Login with Google",
          iconColor: Colors.white,
          buttonColor: Colors.orangeAccent,
          iconData: MdiIcons.facebook,
          textColor: Colors.white,
          onClicked: () {},
        ),
      ),
    );
  }
}
