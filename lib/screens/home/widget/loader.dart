import 'package:flutter/material.dart';
import 'package:poke_agenda_tempo/providers/weatcher_server.dart';
import 'package:poke_agenda_tempo/screens/details/poke_perfil.dart';

class Loader extends StatefulWidget {
  final dynamic _pokemon;

  Loader(this._pokemon);
  @override
  _LoaderState createState() => _LoaderState(_pokemon);
}

class _LoaderState extends State<Loader> {
  final dynamic _pokemon;

  _LoaderState(this._pokemon);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getData(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          default:
            return PokePerfil(_pokemon, snapshot.data["results"]);
        }
      },
    );
  }
}
