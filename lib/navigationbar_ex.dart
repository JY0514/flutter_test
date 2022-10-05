import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  // const Myapp({key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('navigationbar_test')),
        body: Text('text'),
        bottomNavigationBar: BottomAppBar(
            child: SizedBox(
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.star),
                    Icon(Icons.accessible),
                    Icon(Icons.contact_mail),
                  ],
                ))),
      ),
    );
  }
}
