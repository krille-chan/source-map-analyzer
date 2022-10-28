import 'package:flutter/material.dart';
import 'package:source_map_analyzer/src/views/source_map/input/convert_button.dart';
import 'package:source_map_analyzer/src/views/source_map/input/source_map.dart';
import 'package:source_map_analyzer/src/views/source_map/source_map.dart';

import 'input/stack_trace.dart';
import 'stack_trace_output.dart';

class SourceMapLayout extends StatelessWidget {
  final SourceMapController controller;

  const SourceMapLayout({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Source Map Analyzer'),
      ),
      body: SingleChildScrollView(
        child: LayoutBuilder(builder: (context, constraints) {
          final children = [
            StackTraceInput(
              controller: controller,
              constraints: constraints,
            ),
            SourceMapInput(
              controller: controller,
              constraints: constraints,
            ),
          ];
          return constraints.maxWidth > 512
              ? Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: children,
                    ),
                    ConvertButton(controller: controller),
                    StackTraceOutput(controller: controller),
                  ],
                )
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // ...children,
                    ConvertButton(controller: controller),
                    StackTraceOutput(controller: controller),
                  ],
                );
        }),
      ),
    );
  }
}
