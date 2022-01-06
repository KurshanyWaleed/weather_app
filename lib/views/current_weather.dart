import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Widget currentWeather({IconData? icon, String? temp, String? location}) {
  return Center(
    child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.orange,
            size: 64.0,
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
