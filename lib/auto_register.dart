
import 'auto_register_platform_interface.dart';

class AutoRegister {
  Future<String?> getPlatformVersion() {
    return AutoRegisterPlatform.instance.getPlatformVersion();
  }
}
