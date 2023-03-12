import 'package:flutter_test/flutter_test.dart';
import 'package:auto_register/auto_register.dart';
import 'package:auto_register/auto_register_platform_interface.dart';
import 'package:auto_register/auto_register_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAutoRegisterPlatform
    with MockPlatformInterfaceMixin
    implements AutoRegisterPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AutoRegisterPlatform initialPlatform = AutoRegisterPlatform.instance;

  test('$MethodChannelAutoRegister is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAutoRegister>());
  });

  test('getPlatformVersion', () async {
    AutoRegister autoRegisterPlugin = AutoRegister();
    MockAutoRegisterPlatform fakePlatform = MockAutoRegisterPlatform();
    AutoRegisterPlatform.instance = fakePlatform;

    expect(await autoRegisterPlugin.getPlatformVersion(), '42');
  });
}
