import 'package:flutter/material.dart';
import 'package:poke_agenda_tempo/models/pokemon.dart';
import 'package:poke_agenda_tempo/providers/pokemons.dart';
import 'package:poke_agenda_tempo/screens/details/details.dart';
import 'package:poke_agenda_tempo/screens/home/widget/loader.dart';

class Home extends StatefulWidget {
  @override
  createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Poke Info",
          style: TextStyle(
            color: Color(0xFFadff2f),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      body: ListView.separated(
        itemBuilder: builder,
        itemCount: listOfPokemons.length,
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
      ),
    );
  }

  Widget builder(BuildContext context, int index) {
    Pokemon _pokemon = listOfPokemons.elementAt(index);
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  _pokemon.photo,
                  width: 60,
                  height: 60,
                  // fit: BoxFit.cover,
                ),
                SizedBox(
                  width: 14,
                ),
                Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _pokemon.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.70,
                          child: Text(
                            _pokemon.descripition,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Details(_pokemon),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext _) {
              return Loader(_pokemon);
            },
          ),
        );
      },
    );
  }
}
