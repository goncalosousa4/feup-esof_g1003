import '/flutter_flow/flutter_flow_util.dart';
import 'cantina_widget.dart' show CantinaWidget;
import 'package:flutter/material.dart';

class CantinaModel extends FlutterFlowModel<CantinaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
