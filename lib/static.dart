import 'package:flutter/material.dart';

class StaticVariables {
  static OutlineInputBorder outlineInputBorder = const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      borderSide: BorderSide(
          color: Colors.lightBlueAccent,
          width: 1.5
      )
  );
}