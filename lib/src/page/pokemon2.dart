import 'package:belajar_app/src/data/pokemon_model.dart';
import 'package:flutter/material.dart';

class Pokemon2 extends StatelessWidget {
  Pokemon2({super.key});

  final List<PokemonModel> listPokemon = [
    PokemonModel('Bullbasaur', 'images/bullbasaur.png'),
    PokemonModel('Charmander', 'images/charmander.png'),
    PokemonModel('Eevee', 'images/eevee.png'),
    PokemonModel('Pidgey', 'images/pidgey.png'),
    PokemonModel('Pikachu', 'images/pikachu.png'),
    PokemonModel('Pokeball', 'images/pokeball.png'),
    PokemonModel('Rattata', 'images/rattata.png'),
    PokemonModel('Snorlax', 'images/snorlax.png'),
    PokemonModel('Squirtle', 'images/squirtle.png'),
    PokemonModel('Zubat', 'images/zubat.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Samsul Malas App"),
        ),
        // body: Container(
        //   child: Image.asset("images/zubat.png"),
        // ),
        // body: ListView.builder(
        //   itemCount: listPokemon.length,
        //   itemBuilder: (context, index) {
        //     return Container(
        //       padding: EdgeInsets.all(5),
        //         child: Text(
        //             listPokemon[index].name,
        //             style: TextStyle(fontSize: 20)
        //         ),
        //     );
        //   },
        // )
      body: ListView.builder(
        itemCount: listPokemon.length,
        itemBuilder: (context, index) {
          final pokemon = listPokemon[index];

          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: ListTile(
              leading: Image.asset(
                pokemon.image,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(
                pokemon.name,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );

  }
}
