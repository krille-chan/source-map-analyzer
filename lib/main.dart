import 'package:flutter/material.dart';
import 'package:source_map_analyzer/src/views/source_map/source_map.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Source Map Analyzer',
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: ThemeMode.system,
      home: const SourceMapPage(),
    ),
  );
}
