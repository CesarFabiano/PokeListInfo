import 'package:flutter/material.dart';
import 'package:poke_agenda_tempo/models/pokemon.dart';
import 'package:poke_agenda_tempo/screens/details/widgets/pill.dart';
import 'package:poke_agenda_tempo/style.dart';

class Details extends StatelessWidget {
  final Pokemon _pokemon;

  Details(this._pokemon);

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: lightBlueTheme,
        borderRadius: BorderRadius.circular(4),
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "Altura",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "${_pokemon.height} m",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Tipo",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Pill(_pokemon.colorPill, _pokemon.type),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Peso",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "${_pokemon.weight} kg",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Habilidade",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    _pokemon.ability,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
