import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/pages/splash_page.dart';
import 'package:weather_app/providers/weather_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => WeatherProvider(),
      child: const WeatherApp(),
    ),
  );
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    final weatherProvider = Provider.of<WeatherProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: weatherProvider.weatherData == null
            ? Colors.grey
            : weatherProvider.weatherData!.getThemeColor(),
      ),
      home: const SplashPage(),
    );
  }
}
