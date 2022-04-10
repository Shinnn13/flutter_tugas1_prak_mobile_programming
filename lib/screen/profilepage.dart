// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

class profilepage extends StatelessWidget {
  const profilepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          // ignore: deprecated_member_use
          overflow: Overflow.visible,
          alignment: Alignment.center,
          children: <Widget>[
            Image(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3,
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://www.thoughtco.com/thmb/yLYsEuWhULiTsI79C3e0kt8Eteg=/768x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/abstract-paper-flower-pattern-656688606-5acfba2eae9ab80038461ca0.jpg'),
            ),
            Positioned(
              bottom: -60.0,
              child: CircleAvatar(
                radius: 80,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                    'https://images.thestar.com/1LKda5vkeCkkTLgLgQpspScXhmI=/650x650/smart/filters:cb(1620313720633)/https://www.thestar.com/content/dam/thestar/news/canada/2021/05/05/this-black-man-was-stopped-by-police-for-jaywalking-a-human-rights-commission-has-called-it-racist-and-awarded-him-15000/gyasi_symonds.jpg'),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 60,
        ),
        ListTile(
          title: Center(
            child: Text(
              'John Doe',
              style: TextStyle(
                  fontFamily: 'BebasNeue', letterSpacing: 0.2, fontSize: 22),
            ),
          ),
          subtitle: Center(
            child: Text('Flutter Dev & Web Dev'),
          ),
        ),
        ListTile(
          title: Text(
            'About Me',
            style: TextStyle(
                fontFamily: 'BebasNeue', fontSize: 18, letterSpacing: 0.1),
          ),
          subtitle: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
        )
      ],
    );
  }
}
