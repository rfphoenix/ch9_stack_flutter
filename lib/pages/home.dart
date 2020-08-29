import 'package:flutter/material.dart';
import 'package:ch9_stack_flutter/widgets/stack.dart';
import 'package:ch9_stack_flutter/widgets/stack_favorite.dart';

class Home extends StatelessWidget {
  const Home({Key key, @required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: SafeArea(
          child: ListView.builder(
              itemCount: 7,
              itemBuilder: (BuildContext context, index) {
                if (index.isEven) {
                  return const StackWidget();
                } else {
                  return const StackFavoriteWidget();
                }
              })),
    );
  }
}
