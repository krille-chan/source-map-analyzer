import 'package:flutter/material.dart';
import 'package:source_map_analyzer/src/views/source_map/source_map.dart';

class SourceMapInput extends StatelessWidget {
  final SourceMapController controller;
  final BoxConstraints constraints;

  const SourceMapInput({
    super.key,
    required this.controller,
    required this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: constraints.maxWidth / 2),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: controller.sourceMapController,
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: 'Source Map',
            suffixIcon: IconButton(
              onPressed: controller.openSourceMap,
              icon: const Icon(Icons.file_open),
            ),
          ),
          maxLines: 30,
        ),
      ),
    );
  }
}
