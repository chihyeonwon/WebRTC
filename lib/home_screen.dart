import 'package:flutter/material.dart';

import 'logo.dart';
import 'image_center.dart';
import 'entrybutton.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100]!,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child:Column(
            children: [
              Expanded(child: Logo()), //로고
              Expanded(child: ImageCenter()), // 이미지
              Expanded(child: EntryButton()), // 화상 통화 시작 버튼
            ],
          ),
        )
      ),
    );
  }
}
