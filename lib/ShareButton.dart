// ignore_for_file: file_names, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:share/share.dart';

class ShareButton extends StatelessWidget {
  final String _content =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Share Button'),
      ),
      body: Padding(
        padding: EdgeInsets.all(
          24.0,
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              Text(_content),
              Padding(
                padding: EdgeInsets.all(
                  12.0,
                ),
              ),
              ElevatedButton.icon(
                onPressed: _shareContent,
                icon: Icon(Icons.share),
                label: Text('Share this content'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _shareContent() {
    Share.share(_content);
  }
}
