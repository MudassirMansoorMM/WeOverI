import 'package:flutter/material.dart';

import '../global_resources.dart';

class CustomAppBar extends AppBar{


  final String? titleText;

  CustomAppBar({Key? key, required this.titleText}): super(key: key,

    elevation: 0,
    title: Text(titleText!),
    backgroundColor: kRed,
    automaticallyImplyLeading: true


  );



}