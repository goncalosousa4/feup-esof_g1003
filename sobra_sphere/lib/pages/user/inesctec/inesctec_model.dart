import '/flutter_flow/flutter_flow_util.dart';
import 'inesctec_widget.dart' show InesctecWidget;
import 'package:flutter/material.dart';

class InesctecModel extends FlutterFlowModel<InesctecWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
