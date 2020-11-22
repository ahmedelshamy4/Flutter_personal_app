import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class AdaptiveButton extends StatelessWidget {
  final String text;
  final Function hendler;
  AdaptiveButton(this.text, this.hendler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: hendler,
          )
        : FlatButton(
            onPressed: hendler,
            textColor: Theme.of(context).primaryColor,
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          );
  }
}
