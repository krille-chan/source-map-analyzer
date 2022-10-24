import 'package:flutter/material.dart';
import 'package:source_map_analyzer/src/views/source_map/source_map.dart';

class StackTraceOutput extends StatelessWidget {
  final SourceMapController controller;

  const StackTraceOutput({super.key, required this.controller});

  @override
  Widget build(BuildContext context) => Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text.rich(
             TextSpan(text: controller.mappedStackTrace.toString()),
          ),
        ),
      );
}
