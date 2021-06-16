import 'package:flutter/material.dart';
import 'package:poke_agenda_tempo/models/pokemon.dart';
import 'package:poke_agenda_tempo/screens/details/widgets/pill.dart';

class Details extends StatelessWidget {
  final Pokemon _pokemon;

  Details(this._pokemon);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "Tipo",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Pill(_pokemon.colorPill, _pokemon.type),
            ],
          ),
          SizedBox(
              // width: MediaQuery.of(context).size.width * 0.10,
              ),
          Column(
            children: [
              Text(
                "Peso",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text("${_pokemon.weight} kg"),
            ],
          ),
          SizedBox(
              // width: MediaQuery.of(context).size.width * 0.10,
              ),
          Column(
            children: [
              Text(
                "Altura",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text("${_pokemon.height} m"),
            ],
          ),
        ],
      ),
    );
  }
}
