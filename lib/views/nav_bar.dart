import 'package:flutter/material.dart';
import 'package:weather_app/db.json/city.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.builder(
        itemCount: City.cityListe!.length,
        itemBuilder: (context, position) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                City.cityListe![position],
                style: const TextStyle(fontSize: 22.0),
              ),
            ),
          );
        },
      ),
    );
  }
}
