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
        child: Padding(
          padding:EdgeInsets.all(16.0),
          child:Row(
            mainAxisSize: MainAxisSize.min, // 주축 최소 크기
            children:[
              Icon(
                Icons.videocam, // 캠코더 아이콘
                color:Colors.white,
                size:40.0,
              ),
              const SizedBox(width: 12.0),
              Text(
                'Live',
                style:TextStyle(
                  color:Colors.white,
                  fontSize:30.0,
                  letterSpacing: 4.0, // 글자 간격
                )
              )
            ]
          )
        )
      ),
    );
  }
}
