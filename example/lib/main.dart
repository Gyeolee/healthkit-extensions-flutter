import 'package:flutter/material.dart';
import 'package:healthkit_extensions_flutter/healthkit_extensions_flutter.dart';

void main() {
  runApp(const ExampleApp());
}

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HealthKit Extensions Sample',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      home: const SampleHomePage(),
    );
  }
}

class SampleHomePage extends StatelessWidget {
  const SampleHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final result = Calculator().addOne(41);

    return Scaffold(
      appBar: AppBar(title: const Text('healthkit_extensions_flutter')),
      body: Center(
        child: Text(
          'Calculator().addOne(41) = $result',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
