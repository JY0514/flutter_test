import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

import 'package:tab/navigationbar_ex.dart';

void main() => runApp(Myapp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      // 운영체제가 ios 면 실행
      return CupertinoApp(
        home: CupertinoNativeApp(),
      );
    } else {
      //이 외의 운영체제면 실행
      return MaterialApp(
        title: 'Flutter',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: NativeApp(),
      );
    }
  }
}
