import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Widget currentWeather({required String ima, String? temp, String? location}) {
  AssetImage tempIcon = AssetImage(ima);
  return Center(
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Image(
            image: AssetImage(ima),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            "$temp",
            style: const TextStyle(fontSize: 46.0),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            "$location",
            style: const TextStyle(fontSize: 26.0, color: Color(0xFF5a5a5a)),
          ),
        ]),
  );
}
