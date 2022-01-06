import 'package:flutter/material.dart';

TextStyle titleFont =
    const TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0);
TextStyle dataFont =
    const TextStyle(fontWeight: FontWeight.normal, fontSize: 18.0);

Widget additionalInformation(
    {String? wind, String? humidity, String? pressure, String? feelsLike}) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(18.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Wind", style: titleFont),
                const SizedBox(
                  height: 18.0,
                ),
                Text(
                  "Perssure",
                  style: titleFont,
                ),
                const SizedBox(
                  height: 18.0,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("$wind", style: dataFont),
                const SizedBox(
                  height: 18.0,
                ),
                Text(
                  "$pressure",
                  style: dataFont,
                ),
                const SizedBox(
                  height: 18.0,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Humidity", style: titleFont),
                const SizedBox(
                  height: 18.0,
                ),
                Text(
                  "Feels Like",
                  style: titleFont,
                ),
                const SizedBox(
                  height: 18.0,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("$humidity", style: dataFont),
                const SizedBox(
                  height: 18.0,
                ),
                Text(
                  "$feelsLike",
                  style: dataFont,
                ),
                const SizedBox(
                  height: 18.0,
                ),
              ],
            )
          ],
        )
      ],
    ),
  );
}
