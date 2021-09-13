import 'package:connectivity_check/connectivity/application/connectivity_notifier.dart';
import 'package:cross_connectivity/cross_connectivity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final connectionNotifierProvider =
    StateNotifierProvider<ConnectionNotifier, ConnectionState>(
  (ref) => ConnectionNotifier(
    connectivity: ref.watch(connectivityProvider),
  ),
);

final connectivityProvider = Provider<Connectivity>((ref) => Connectivity());
