// ignore_for_file: prefer_const_constructors

import 'package:connectivity_check/connectivity/shared/providers.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(ProviderScope(child: MyApp()));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const HomePage(),
      ),
    );
  }
}

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    ref.listen(initializationProvider, (_) {});
    final state = ref.watch(connectionNotifierProvider);

    return Center(
      child: state.map(
        initial: (_) {
          return const Text("");
        },
        isConnected: (_) {
          if (_.showPopUp) {}
          return const Text("Yay!connected");
        },
        isDisconnected: (_) {
          return const Text("Disconnected");
        },
      ),
    );
  }
}
