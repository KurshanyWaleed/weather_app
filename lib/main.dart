import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_app/model/weather.dart';
import 'package:weather_app/services.dart';
import 'package:weather_app/views/additional_information.dart';
import 'package:weather_app/views/current_weather.dart';
import 'package:weather_app/views/nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Weather App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  WeatherApiClient weatherApiClient = WeatherApiClient();
  Weather? data = Weather();
  Future<void> getData() async {
    data = await weatherApiClient.getCurrentWeather('cuba');
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    //! UI of the application !
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: const Color(0xFFf9f9f9),
        drawer: NavBar(),
        appBar: AppBar(
          backgroundColor: const Color(0xFFf9f9f9),
          elevation: 0.0,
          centerTitle: true,
          leading: IconButton(
            color: Colors.black,
            icon: const Icon(Icons.menu),
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          ),
          title:
              const Text("Weather App", style: TextStyle(color: Colors.black)),
        ),
        body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //?custom widget for the app :P
                  currentWeather(
                      ima: "assets/${data!.iconPath}@2x.png",
                      temp: "${data!.temp.toString().split('.')[0]}°",
                      location: "${data!.cityName}"),
                  const SizedBox(
                    height: 25.0,
                  ),
                  const Text("Additional Information",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF5a5a5a))),
                  const SizedBox(
                    height: 25.0,
                  ),
                  const Divider(),
                  additionalInformation(
                      wind: "${data!.wind}",
                      pressure: "${data!.pressure}",
                      humidity: "${data!.humidity}",
                      feelsLike: "${data!.feelsLike}")
                ],
              );
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                  child: CircularProgressIndicator(color: Colors.blue));
            }
            return Container();
          },
          //
        ));
  }
}
