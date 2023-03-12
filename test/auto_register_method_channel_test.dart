import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:auto_register/auto_register_method_channel.dart';

void main() {
  MethodChannelAutoRegister platform = MethodChannelAutoRegister();
  const MethodChannel channel = MethodChannel('auto_register');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
