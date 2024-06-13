import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_p2p_connection_platform_interface.dart';

/// An implementation of [FlutterP2pConnectionPlatform] that uses method channels.
class MethodChannelFlutterP2pConnection extends FlutterP2pConnectionPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_p2p_connection');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<String?> getPlatformModel() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformModel');
    if (version == null) return null;
    return version.replaceFirst("model: ", "");
  }

  @override
  Future<bool?> initialize() async {
    final initialized = await methodChannel.invokeMethod<bool?>("initialize");
    return initialized;
  }

  @override
  Future<int?> discover() async {
    final discovering = await methodChannel.invokeMethod<int?>("discover");
    return discovering;
  }

  @override
  Future<int?> stopDiscovery() async {
    final stopped = await methodChannel.invokeMethod<int?>("stopDiscovery");
    return stopped;
  }

  @override
  Future<int?> connect(String address) async {
    final arg = {
      "address": address,
    };
    final connected = await methodChannel.invokeMethod<int?>("connect", arg);
    return connected;
  }

  @override
  Future<int?> disconnect() async {
    final disconnected = await methodChannel.invokeMethod<int?>("disconnect");
    return disconnected;
  }

  @override
  Future<int?> createGroup() async {
    final created = await methodChannel.invokeMethod<int?>("createGroup");
    return created;
  }

  @override
  Future<int?> removeGroup() async {
    final removed = await methodChannel.invokeMethod<int?>("removeGroup");
    return removed;
  }

  @override
  Future<String?> groupInfo() async {
    final info = await methodChannel.invokeMethod<String?>("groupInfo");
    return info;
  }

  @override
  Future<String?> fetchPeers() async {
    final String? peers = await methodChannel.invokeMethod<String?>("fetchPeers");
    return peers;
  }

  @override
  Future<bool?> resume() async {
    final resume = await methodChannel.invokeMethod<bool?>("resume");
    return resume;
  }

  @override
  Future<bool?> pause() async {
    final pause = await methodChannel.invokeMethod<bool?>("pause");
    return pause;
  }

  @override
  Future<bool?> checkLocationPermission() async {
    final res =
        await methodChannel.invokeMethod<bool?>("checkLocationPermission");
    return res;
  }

  @override
  Future<bool?> askLocationPermission() async {
    final res =
        await methodChannel.invokeMethod<bool?>("askLocationPermission");
    return res;
  }

  @override
  Future<String?> checkLocationEnabled() async {
    final res =
        await methodChannel.invokeMethod<String?>("checkLocationEnabled");
    return res;
  }

  @override
  Future<bool?> checkGpsEnabled() async {
    final res = await methodChannel.invokeMethod<bool?>("checkGpsEnabled");
    return res;
  }

  @override
  Future<bool?> enableLocationServices() async {
    final res =
        await methodChannel.invokeMethod<bool?>("enableLocationServices");
    return res;
  }

  @override
  Future<bool?> checkWifiEnabled() async {
    final res = await methodChannel.invokeMethod<bool?>("checkWifiEnabled");
    return res;
  }

  @override
  Future<bool?> enableWifiServices() async {
    final res = await methodChannel.invokeMethod<bool?>("enableWifiServices");
    return res;
  }
}
