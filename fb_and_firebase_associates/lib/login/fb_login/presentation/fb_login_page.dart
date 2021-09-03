import 'package:fb_and_firebase_associates/login/core/presentation/social_sign_in_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class FbLoginPage extends ConsumerStatefulWidget {
  const FbLoginPage({Key? key}) : super(key: key);

  @override
  _FbLoginPageState createState() => _FbLoginPageState();
}

class _FbLoginPageState extends ConsumerState<FbLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SocialSignInButton(
          buttonText: "Login with Facebook",
          iconColor: Colors.blue,
          buttonColor: Colors.white,
          iconData: MdiIcons.facebook,
          textColor: Colors.black,
          onClicked: () {},
        ),
      ),
    );
  }
}
