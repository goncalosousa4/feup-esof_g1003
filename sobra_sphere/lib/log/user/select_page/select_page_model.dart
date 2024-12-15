import '/flutter_flow/flutter_flow_util.dart';
import 'select_page_widget.dart' show SelectPageWidget;
import 'package:flutter/material.dart';

class SelectPageModel extends FlutterFlowModel<SelectPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
