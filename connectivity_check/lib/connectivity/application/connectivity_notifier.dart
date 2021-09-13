import 'package:cross_connectivity/cross_connectivity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'connectivity_notifier.freezed.dart';

@freezed
class ConnectionState with _$ConnectionState {
  const ConnectionState._();
  const factory ConnectionState.initial({required bool showPopUp}) = _Initial;
  const factory ConnectionState.isConnected({required bool showPopUp}) =
      _IsConnected;
  const factory ConnectionState.isDisconnected({required bool showPopUp}) =
      _IsDisconnected;
}

class ConnectionNotifier extends StateNotifier<ConnectionState> {
  final Connectivity connectivity;
  ConnectionNotifier({required this.connectivity})
      : super(const ConnectionState.initial(showPopUp: true));

  void init() {
    connectivity.isConnected.listen((isConnectedToNetwork) {
      isConnectedToNetwork
          ? setToConnected()
          : setToDisconnected(showPopUp: true);
    });
  }

  void setToConnected({bool showPopUp = true}) {
    state = ConnectionState.isConnected(showPopUp: showPopUp);
  }

  void setToDisconnected({required bool showPopUp}) {
    state = ConnectionState.isDisconnected(showPopUp: showPopUp);
  }

  bool get showPopUp => state.showPopUp;
}
