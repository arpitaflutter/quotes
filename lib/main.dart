import 'package:flutter/material.dart';
import 'package:quotes/quo.dart';

import 'home.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => home(),
        'quo':(context) => quo(),
      },
    ),
  );
}