import '/flutter_flow/flutter_flow_util.dart';
import 'minas_widget.dart' show MinasWidget;
import 'package:flutter/material.dart';

class MinasModel extends FlutterFlowModel<MinasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
