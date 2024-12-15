import '/flutter_flow/flutter_flow_util.dart';
import 'fav_page_widget.dart' show FavPageWidget;
import 'package:flutter/material.dart';

class FavPageModel extends FlutterFlowModel<FavPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
