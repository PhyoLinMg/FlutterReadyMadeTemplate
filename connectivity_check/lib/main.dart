import 'package:connectivity_check/connectivity/shared/providers.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(ProviderScope(child: const MyApp()));

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(initializationProvider, (_) {});
    final state = ref.watch(connectionNotifierProvider);
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: Text(state.map(
            initial: (_) {
              return "";
            },
            isConnected: (_) {
              if (_.showPopUp) {
                print("show popup ${_.showPopUp}");
              }
              return "Yay! Connected";
            },
            isDisconnected: (_) {
              return "Disconnected!";
            },
          )),
        ),
      ),
    );
  }
}
