import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'auto_register_platform_interface.dart';

/// An implementation of [AutoRegisterPlatform] that uses method channels.
class MethodChannelAutoRegister extends AutoRegisterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('auto_register');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
