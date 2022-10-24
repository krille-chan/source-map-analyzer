import 'package:flutter/material.dart';
import 'package:source_map_analyzer/src/views/source_map/source_map.dart';

class ConvertButton extends StatelessWidget {
  final SourceMapController controller;

  const ConvertButton({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: controller.convertStackTrace,
      label: const Text('Map stack strace'),
    );
  }
}
