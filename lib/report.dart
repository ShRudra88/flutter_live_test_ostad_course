class report{
  final String city;
  final int temperature;
  final String condition;
  final int humidity;
  final double windspeed;

  report(
      this.city,
      this.temperature,
      this.condition,
      this.humidity,
      this.windspeed,
      );
  factory report.fromMap(Map<String, dynamic> json) {
    return report(json['city'], json['temperature'], json['condition'], json['humadity'], json['windspeed']);
  }
  factory report.fromMap(Map<String, dynamic> json) {
    return report(json['city'], json['temperature'], json['condition'], json['humadity'], json['windspeed']);
  }
}