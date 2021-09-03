import 'package:fb_and_firebase_associates/login/core/application/auth_notifier.dart';
import 'package:fb_and_firebase_associates/login/core/presentation/social_sign_in_button.dart';
import 'package:fb_and_firebase_associates/login/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AllLoginPage extends ConsumerStatefulWidget {
  final int id;

  const AllLoginPage({required this.id, Key? key}) : super(key: key);

  @override
  _AllLoginPageState createState() => _AllLoginPageState();
}

class _AllLoginPageState extends ConsumerState<AllLoginPage> {
  @override
  Widget build(BuildContext context) {
    print(widget.id);
    final state = ref.watch(authNotifierProvider);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            state.maybeMap(
              authenticationFailure: (e) =>
                  SelectableText(e.failure.message.toString()),
              unauthenticated: (_) => Text("Unauthenticated"),
              authenticated: (token) => Text("Login successful, $token"),
              orElse: () => Text("No Update"),
            ),
            SocialSignInButton(
              buttonText: "Login with Facebook",
              iconColor: Colors.blue,
              buttonColor: Colors.white,
              iconData: MdiIcons.facebook,
              textColor: Colors.black,
              onClicked: () {
                ref
                    .read(authNotifierProvider.notifier)
                    .login(LoginType.facebook);
              },
            ),
            SocialSignInButton(
              buttonText: "Login with Google",
              iconColor: Colors.white,
              buttonColor: Colors.orangeAccent,
              iconData: MdiIcons.facebook,
              textColor: Colors.white,
              onClicked: () {
                ref.read(authNotifierProvider.notifier).login(LoginType.google);
              },
            ),
          ],
        ),
      ),
    );
  }
}
