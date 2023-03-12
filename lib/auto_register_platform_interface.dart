import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'auto_register_method_channel.dart';

abstract class AutoRegisterPlatform extends PlatformInterface {
  /// Constructs a AutoRegisterPlatform.
  AutoRegisterPlatform() : super(token: _token);

  static final Object _token = Object();

  static AutoRegisterPlatform _instance = MethodChannelAutoRegister();

  /// The default instance of [AutoRegisterPlatform] to use.
  ///
  /// Defaults to [MethodChannelAutoRegister].
  static AutoRegisterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AutoRegisterPlatform] when
  /// they register themselves.
  static set instance(AutoRegisterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
