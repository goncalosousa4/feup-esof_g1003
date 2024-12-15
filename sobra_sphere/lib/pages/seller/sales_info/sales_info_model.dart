import '/flutter_flow/flutter_flow_util.dart';
import 'sales_info_widget.dart' show SalesInfoWidget;
import 'package:flutter/material.dart';

class SalesInfoModel extends FlutterFlowModel<SalesInfoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
