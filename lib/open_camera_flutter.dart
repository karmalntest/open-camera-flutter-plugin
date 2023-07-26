import 'open_camera_flutter_platform_interface.dart';

class OpenCameraFlutter {
  Future<String?> getPlatformVersion() {
    return OpenCameraFlutterPlatform.instance.getPlatformVersion();
  }

  Future<String?> capturePhoto() {
    return OpenCameraFlutterPlatform.instance.capturePhoto();
  }
}
