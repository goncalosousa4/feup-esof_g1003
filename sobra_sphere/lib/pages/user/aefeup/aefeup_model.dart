import '/flutter_flow/flutter_flow_util.dart';
import 'aefeup_widget.dart' show AefeupWidget;
import 'package:flutter/material.dart';

class AefeupModel extends FlutterFlowModel<AefeupWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
