import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class CamScreen extends StatefulWidget {
  const CamScreen({Key? key}) : super(key: key);

  @override
  State<CamScreen> createState() => _CamScreenState();
}

class _CamScreenState extends State<CamScreen> {

  Future<bool> init() async {
    final resp = await [Permission.camera, Permission.microphone].request();

    final cameraPermission = resp[Permission.camera]; // 카메라 권한 요청에 대한 응답을 cameraPermission에 저장
    final micPermission = resp[Permission.microphone]; // 마이크 권한 요청에 대한 응답을 micPermission에 저장

    if(cameraPermission != PermissionStatus.granted || micPermission != PermissionStatus.granted) {
      throw '카메라 또는 마이크 권한이 없습니다.';
    }

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('LIVE'),
      ),
    );
  }
}
