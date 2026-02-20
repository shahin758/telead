import 'package:flutter/material.dart';

void pushReplacement(BuildContext context, Widget newscreen) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => newscreen),
  );
}

void pushTo(BuildContext context, Widget newscreen) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => newscreen),
  );
}

void pop(BuildContext context, Widget newscreen) {
  Navigator.pop(
    context,
    MaterialPageRoute(builder: (context) => newscreen),
  );
}