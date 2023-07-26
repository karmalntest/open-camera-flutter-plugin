import 'package:flutter_test/flutter_test.dart';
import 'package:open_camera_flutter/open_camera_flutter.dart';
import 'package:open_camera_flutter/open_camera_flutter_platform_interface.dart';
import 'package:open_camera_flutter/open_camera_flutter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockOpenCameraFlutterPlatform with MockPlatformInterfaceMixin implements OpenCameraFlutterPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<String?> capturePhoto() {
    // TODO: implement capturePhoto
    throw UnimplementedError();
  }
}

void main() {
  final OpenCameraFlutterPlatform initialPlatform = OpenCameraFlutterPlatform.instance;

  test('$MethodChannelOpenCameraFlutter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelOpenCameraFlutter>());
  });

  test('getPlatformVersion', () async {
    OpenCameraFlutter openCameraFlutterPlugin = OpenCameraFlutter();
    MockOpenCameraFlutterPlatform fakePlatform = MockOpenCameraFlutterPlatform();
    OpenCameraFlutterPlatform.instance = fakePlatform;

    expect(await openCameraFlutterPlugin.getPlatformVersion(), '42');
  });
}
