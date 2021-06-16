import 'package:flutter/material.dart';

class Pokemon {
  String photo;
  String name;
  String descripition;
  String ability;
  String type;
  double weight;
  double height;
  Color colorPill;

  Pokemon({
    required this.photo,
    required this.name,
    required this.descripition,
    required this.ability,
    required this.type,
    required this.weight,
    required this.height,
    required this.colorPill,
  });
}
