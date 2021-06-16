import 'package:flutter/material.dart';
import 'package:poke_agenda_tempo/models/pokemon.dart';
import 'package:poke_agenda_tempo/screens/home/widget/details.dart';

class PokePerfil extends StatelessWidget {
  final Pokemon _pokemon;
  final dynamic _data;

  PokePerfil(this._pokemon, this._data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pokemon.name),
        centerTitle: true,
        backgroundColor: _pokemon.colorPill,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 5,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                _pokemon.photo,
                width: 150,
                fit: BoxFit.cover,
              ),
              Text(
                this._pokemon.descripition,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/bola_azul.png",
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    "assets/images/bola_vermelha.png",
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: _pokemon.colorPill,
                  borderRadius: BorderRadius.circular(4),
                ),
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      "Está fazendo ${_data["temp"]}º Graus na sua localização atual.",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      (_data["temp"] >= 20 && _pokemon.type == "Fogo")
                          ? "O Pokemon ${_pokemon.name} fica mais forte nessa temperatura. Ele adora temperaturas mais quentes."
                          : (_data["temp"] <= 20 && _pokemon.type != "Fogo")
                              ? "O Pokemon ${_pokemon.name} fica mais forte nessa temperatura. Ele adora temperaturas mais refrescantes."
                              : (_data["temp"] >= 10 && _pokemon.type == "Água")
                                  ? "O Pokemon ${_pokemon.name} fica mais forte nessa temperatura. Ele adora temperaturas mais frias."
                                  : "O Pokemon ${_pokemon.name} fica mais fraco nessas temperaturas. Ele odeia temperaturas abaixo de 10º graus.",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Details(_pokemon),
            ],
          ),
        ),
      ),
    );
  }
}
