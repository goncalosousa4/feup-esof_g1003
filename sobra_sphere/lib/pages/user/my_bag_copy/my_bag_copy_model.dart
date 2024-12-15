import '/flutter_flow/flutter_flow_util.dart';
import 'my_bag_copy_widget.dart' show MyBagCopyWidget;
import 'package:flutter/material.dart';

class MyBagCopyModel extends FlutterFlowModel<MyBagCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
