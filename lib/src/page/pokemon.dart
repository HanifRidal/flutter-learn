import 'package:flutter/material.dart';

class Pokemon extends StatelessWidget {
  Pokemon({super.key});

  final List<String> listPokemon = [
    "Bullbasaur",
    "Charmader",
    "Eevee",
    "Pidgey",
    "Pikachu",
    "Pokeball",
    "Rattata",
    "Snorlax",
    "Squirtle",
    "Zubat",
  ];

  @override
  Widget build(BuildContext context) {

    listPokemon.forEach((element) {
      if (element == "Pikachu") {
        print("test loop $element");
      } else {
        print("print $element");
      }
    });
    
    // print("_print pokemon ${listPokemon[1]}");

    return Scaffold(
      appBar: AppBar(
        title: Text("Samsul Malas App"),
      ),
      // body: Container(
      //   child: Image.asset("images/zubat.png"),
      // ),
      body: ListView.builder(
          itemCount: listPokemon.length,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(5),
                child: Text(
                  listPokemon[index],
                  style: TextStyle(fontSize: 20)
                ),
              );
            },
      )
    );
  }
}
