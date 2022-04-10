// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:flutter/material.dart';

class homepage1 extends StatefulWidget {
  const homepage1({Key? key}) : super(key: key);

  @override
  State<homepage1> createState() => _homepage1State();
}

class _homepage1State extends State<homepage1> {
  List<String> genres = [
    'Pop',
    'Jazz',
    'Folk Music',
    'Country Music',
    'Hip Hop',
    'Electro Dance Music',
    'Blues',
    'Alternative Rock',
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        body: buildList(),
      );

  Widget buildList() => ListView.builder(
        itemCount: genres.length,
        itemBuilder: (context, index) {
          final item = genres[index];
          Scrollbar(
              isAlwaysShown: true,
              thickness: 10,
              child: ListView.separated(
                padding: EdgeInsets.all(20),
                separatorBuilder: (context, index) => SizedBox(height: 12),
                itemCount: 25,
                itemBuilder: (context, index) => buildList(),
              ));
          return ListTile(
            leading: CircleAvatar(
              radius: 28,
              backgroundImage:
                  NetworkImage('https://source.unsplash.com/random?sig=$index'),
            ),
            title: Text(item),
            subtitle: Text('Subtittle $index'),
            onTap: () => selectItem(item),
          );
        },
      );

  void selectItem(String item) {
    final snackBar = SnackBar(
        content: Text(
      'Selected $item...',
      style: TextStyle(fontSize: 24),
    ));

    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}
