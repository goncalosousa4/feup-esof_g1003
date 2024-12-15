import '/flutter_flow/flutter_flow_util.dart';
import 'login_reg_page_widget.dart' show LoginRegPageWidget;
import 'package:flutter/material.dart';

class LoginRegPageModel extends FlutterFlowModel<LoginRegPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
