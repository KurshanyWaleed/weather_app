class Weather {
  String? cityName;
  double? temp;
  double? wind;
  int? humidity;
  double? feelsLike;
  int? pressure;

  Weather(
      {this.cityName,
      this.feelsLike,
      this.humidity,
      this.pressure,
      this.temp,
      this.wind});
  Weather.fromJson(Map<String, dynamic> json) {
    cityName = json["name"];
    temp = json["main"]["temp"];
    wind = json["wind"]["speed"];
    humidity = json["main"]["humidity"];
    feelsLike = json["main"]["feels_like"];
    pressure = json["main"]["pressure"];
  }
}
