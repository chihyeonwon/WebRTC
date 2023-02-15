import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color:Colors.blue,
          borderRadius:BorderRadius.circular(16.0), // 모서리 둥글게 만들기
          boxShadow:[
            BoxShadow(
              color:Colors.blue[300]!,
              blurRadius: 12.0,
              spreadRadius: 2.0,
            ),
          ],
        ),
      )
    );
  }
}
