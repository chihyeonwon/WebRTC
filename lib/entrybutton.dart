import 'package:flutter/material.dart';

import './screen/cam_screen.dart';


class EntryButton extends StatelessWidget {
  const EntryButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (_) => CamScreen(),
                ),
              );
            },
            child: Text('입장하기'),
        ),
      ],
    );
  }
}
