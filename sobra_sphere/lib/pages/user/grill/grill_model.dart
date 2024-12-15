import '/flutter_flow/flutter_flow_util.dart';
import 'grill_widget.dart' show GrillWidget;
import 'package:flutter/material.dart';

class GrillModel extends FlutterFlowModel<GrillWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
