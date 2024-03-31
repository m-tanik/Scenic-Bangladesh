
import 'package:flutter/material.dart';
class CategoryModel {
  String title;
  int totalNumber;
  VoidCallback? onTap;
  Color? color;

  CategoryModel(
      {this.title = 'Dhaka',
        this.totalNumber = 100,
        this.onTap,
        this.color ,});
}