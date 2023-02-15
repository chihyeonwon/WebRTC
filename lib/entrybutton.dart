import 'package:flutter/material.dart';

class EntryButton extends StatelessWidget {
  const EntryButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
            onPressed: () {},
            child: Text('입장하기'),
        ),
      ],
    );
  }
}
