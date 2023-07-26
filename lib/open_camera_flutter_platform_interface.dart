import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'open_camera_flutter_method_channel.dart';

abstract class OpenCameraFlutterPlatform extends PlatformInterface {
  OpenCameraFlutterPlatform() : super(token: _token);
  static final Object _token = Object();
  static OpenCameraFlutterPlatform _instance = MethodChannelOpenCameraFlutter();
  static OpenCameraFlutterPlatform get instance => _instance;

  static set instance(OpenCameraFlutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> capturePhoto() {
    throw UnimplementedError('capturePhoto() has not been implemented.');
  }
}
