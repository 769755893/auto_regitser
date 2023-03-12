#include "include/auto_register/auto_register_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "auto_register_plugin.h"

void AutoRegisterPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  auto_register::AutoRegisterPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
