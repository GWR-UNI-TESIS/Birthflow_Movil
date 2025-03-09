import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart'; // Para usar kIsWeb
// Para usar defaultTargetPlatform

Future<String> getDeviceFingerprint() async {
  final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  String deviceId;

  if (kIsWeb) {
    return 'WebDevice'; // O alguna lógica específica para web
  } else if (defaultTargetPlatform == TargetPlatform.iOS) {
    final IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
    deviceId = '${iosInfo.name}-${iosInfo.systemVersion}-${iosInfo.utsname.machine}';
  } else {
    final AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    deviceId = '${androidInfo.brand}-${androidInfo.model}-${androidInfo.id}';
  }

  // Hash para crear un fingerprint
  final bytes = utf8.encode(deviceId);
  final digest = sha256.convert(bytes);

  return digest.toString();
}
