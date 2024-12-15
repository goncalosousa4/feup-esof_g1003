import '/flutter_flow/flutter_flow_util.dart';
import 'email_sent_user_widget.dart' show EmailSentUserWidget;
import 'package:flutter/material.dart';

class EmailSentUserModel extends FlutterFlowModel<EmailSentUserWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
