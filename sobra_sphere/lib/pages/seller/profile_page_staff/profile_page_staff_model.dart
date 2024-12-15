import '/flutter_flow/flutter_flow_util.dart';
import 'profile_page_staff_widget.dart' show ProfilePageStaffWidget;
import 'package:flutter/material.dart';

class ProfilePageStaffModel extends FlutterFlowModel<ProfilePageStaffWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
