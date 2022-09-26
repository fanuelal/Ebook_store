import 'package:flutter/material.dart';

class Catagory {
  final String id;
  final String title;
  final String imageUrl;
  const Catagory({
    @required this.id,
    @required this.title,
    this.imageUrl
    });
}
