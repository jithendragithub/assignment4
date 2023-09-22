import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class secondclass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget paragraph=Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
          child: Text('A school is an educational institution designed to provide learning spaces and learning environments for the teaching of students under the direction of teachers. Most countries '
              'have systems of formal education, which is sometimes compulsory. '
              'In these systems, students progress through a series of schools.'
              'In much of continental Europe, the term school usually applies to primary education, with primary schools that last between four and nine years, depending on the country.'
              ' It also applies to secondary education, with secondary schools often divided between Gymnasiums and vocational schools, which again, depending on country and type of school,'
              ' educate students for between three and six years. In Germany,'
              ' students graduating from Grundschule are not allowed to progress into a vocational school directly. '),
        ),
      );
    return Scaffold(
      body:ListView(
          children: [
            Image.asset('images/download.jpeg',
              height: 600,
              width: 500,
              fit: BoxFit.cover,
            ),
            paragraph,

          ],
        ),
    );
  }
}

