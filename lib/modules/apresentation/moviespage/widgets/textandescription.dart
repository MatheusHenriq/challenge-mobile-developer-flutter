import 'package:flutter/material.dart';

class TextAndDescription extends StatelessWidget {
  final String? description;
  final String? text;
  TextAndDescription({
    Key? key,
    @required this.description,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text!, style: Theme.of(context).textTheme.headline5),
        Text(description!, style: Theme.of(context).textTheme.bodyText1),
      ],
    );
  }
}
