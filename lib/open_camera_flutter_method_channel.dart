import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'open_camera_flutter_platform_interface.dart';

class MethodChannelOpenCameraFlutter extends OpenCameraFlutterPlatform {
  @visibleForTesting
  final methodChannel = const MethodChannel('open_camera_flutter');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<String?> capturePhoto() async {
    final imagePath = await methodChannel.invokeMethod<String>('capturePhoto');
    return imagePath;
  }
}
