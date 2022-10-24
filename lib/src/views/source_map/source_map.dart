import 'package:flutter/material.dart';
import 'package:file_picker_cross/file_picker_cross.dart';

import 'package:source_map_stack_trace/source_map_stack_trace.dart';
import 'package:source_maps/parser.dart';

import 'source_map_layout.dart';

class SourceMapPage extends StatefulWidget {
  const SourceMapPage({super.key});

  @override
  State<SourceMapPage> createState() => SourceMapController();
}

class SourceMapController extends State<SourceMapPage> {
  final TextEditingController stackTraceController = TextEditingController();
  final TextEditingController sourceMapController = TextEditingController();

  StackTrace? mappedStackTrace;

  @override
  Widget build(BuildContext context) => SourceMapLayout(controller: this);

  void convertStackTrace() {
    final stackTrace = StackTrace.fromString(stackTraceController.text);
    final sourceMap = parse(sourceMapController.text);
    final mapping = mapStackTrace(
      sourceMap,
      stackTrace,
      sdkRoot: Uri.parse('https://github.com/dart-lang/sdk/tree/main/sdk/'),
    );
    setState(() => mappedStackTrace = mapping);
  }

  Future<void> openSourceMap() async {
    final file = await FilePickerCross.importFromStorage();
    sourceMapController.text = file.toString();
  }
}
